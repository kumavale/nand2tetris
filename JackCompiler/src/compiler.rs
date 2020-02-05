///           class:  'class' className '{' classVarDec* subroutineDec* '}'
///     classVarDec:  ('static'|'field') type varName (','varName)* ';'
///            type:  'int'|'char'|'boolean'|className
///   subroutineDec:  ('constructor'|'function'|'method') ('void'|type) subroutineName
///                   '(' parameterList ')' subroutineBody
///   parameterList:  ((type varName) (','type varName)*)?
///  subroutineBody:  '{' varDec* statements '}'
///          varDec:  'var' type varName (',' varName)* ';'
///       className:  identifier
///  subroutineName:  identifier
///         varName:  identifier
///
///      statements:  statement*
///       statement:  letStatement | ifStatement | whileStatement | doStatement | returnStatement
///    letStatement:  'let' varName ('[' expression ']')? '=' expression ';'
///     ifStatement:  'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
///  whileStatement:  'while' '(' expression ')' '{' statements '}'
///     doStatement:  'do' subroutineCall ';'
/// returnStatement:  'return' expression? ';'
///
///      expression:  term (op term)*
///            term:  integerConstant | stringConstant | keywordConstant | varName |
///                   varName '[' expression ']' | subroutineCall | '(' expression ')' | unaryOp term
///  subroutineCall:  subroutineName '(' expressionList ')' |
///                   (className | varName) '.' subroutineName '(' expressionList ')'
///  expressionList:  (expression (',' expression)*)?
///              op:  '=' | '<' | '>' | or
///              or:  '|' | and
///             and:  '&' | addsub
///          addsub:  '+' | '-' | muldiv
///          muldiv:  '*' | '/'
///         unaryOp:  '-' | '~'
/// keywordConstant:  'true' | 'false' | 'null' | 'this'
///
/// integerConstant:  0..32767
///  stringConstant:  '"' a sequence of Unicode characters not including double quote or newline '"'
///      identifier:  a sequence of letters, digits, and underscore ('_') not starting with a digit.


use super::token::*;
use super::symbol::*;

pub fn compile(tokens: &mut Tokens) -> String {
    let mut output = String::new();
    let mut st = SymbolTable::new();
    parse_subroutine(tokens, &mut st);
    compile_class(&mut output, tokens, &mut st);
    output
}

fn parse_subroutine(tokens: &mut Tokens, st: &mut SymbolTable) {
    let mut tokens_iter = tokens.tokens.iter();
    while let Some(token) = tokens_iter.next() {
        if let Ok(keyword) = token.expect_keyword() {
            if keyword == "constructor" || keyword == "function" || keyword == "method" {
                tokens_iter.next();
                let subroutineName = tokens_iter.next().unwrap().expect_identifier().unwrap();
                st.define_subroutine(&keyword, &subroutineName);
            }
        }
    }
}

// Compiles a complete class.
fn compile_class(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    tokens.consume();
    let class_name = tokens.consume().unwrap().expect_identifier().unwrap();
    st.class_name = class_name.to_string();
    tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
    st.scope_in();
    compile_class_var_dec(output, tokens, st);
    compile_subroutine_dec(output, tokens, st);
    tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
    st.scope_out();
}

// Compiles a static variable declaration, or a field declaration.
fn compile_class_var_dec(_output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    while let Some(next) = tokens.next() {
        if let Ok(keyword) = next.expect_keyword() {
            if keyword == "static" || keyword == "field" {
                tokens.consume();
                let token = tokens.consume().unwrap().clone();
                let varType = token.expect_type().unwrap();
                let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                let kind = if keyword == "static" { Kind::Static } else { Kind::Field };
                st.define(varName, varType, kind);
                while let Some(next) = tokens.next() {
                    if next.expect_symbol(SymbolKind::Comma).is_ok() {
                        tokens.consume();
                        let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                        st.define(varName, varType, kind);
                    } else {
                        break;
                    }
                }
                tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
            } else {
                return;
            }
        } else {
            return;
        }
    }
}

// Compiles a complete method, function, or constructor.
fn compile_subroutine_dec(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    while let Some(next) = tokens.next() {
        if let Ok(keyword) = next.expect_keyword() {
            if keyword == "constructor" || keyword == "function" || keyword == "method" {
                st.scope_in();
                tokens.consume();
                let token = tokens.next().unwrap();
                let varType = token.expect_type().unwrap();
                tokens.consume();
                let token = tokens.next().unwrap();
                let subroutineName = token.expect_identifier().unwrap();
                tokens.consume();
                tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
                if keyword == "method" {
                    st.define("this", varType, Kind::Argument);
                }
                compile_parameter_list(output, tokens, st);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                compile_subroutine_body(output, tokens, st, subroutineName, keyword);
                st.scope_out();
            } else {
                return;
            }
        } else {
            return;
        }
    }
}

// Compiles a (possibly empty) parameter list.
// Does not handle the enclosing "()".
fn compile_parameter_list(_output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    if let Some(next) = tokens.next() {
        if let Ok(varType) = next.expect_type() {
            tokens.consume();
            let varName = tokens.consume().unwrap().expect_identifier().unwrap();
            st.define(varName, varType, Kind::Argument);
            while tokens.next().unwrap().expect_symbol(SymbolKind::Comma).is_ok() {
                tokens.consume();
                let token = tokens.consume().unwrap().clone();
                let varType = token.expect_type().unwrap();
                let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                st.define(varName, varType, Kind::Argument);
            }
        }
    }
}

// Compiles a subroutine's body.
fn compile_subroutine_body(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable,
    subroutineName: &str, keyword: &str)
{
    tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
    compile_var_dec(output, tokens, st);
    *output += &format!("\nfunction {}.{} {}\n", st.class_name, subroutineName, st.var_count(Kind::Local));
    if keyword == "method" {
        *output += "push argument 0\n";
        *output += "pop pointer 0\n";
    } else if keyword == "constructor" {
        *output += &format!("push constant {}\n", st.var_count(Kind::Field)); // probably Kind::Static too
        *output += "call Memory.alloc 1\n";
        *output += "pop pointer 0\n";
    }
    compile_statements(output, tokens, st);
    tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
}

// Compiles a var declaration.
fn compile_var_dec(_output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    while let Some(next) = tokens.next() {
        if let Ok(keyword) = next.expect_keyword() {
            if keyword == "var" {
                tokens.consume();
                let token = tokens.consume().unwrap().clone();
                let varType = token.expect_type().unwrap();
                let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                st.define(varName, varType, Kind::Local);
                while tokens.next().unwrap().expect_symbol(SymbolKind::Comma).is_ok() {
                    tokens.consume();
                    let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                    st.define(varName, varType, Kind::Local);
                }
                tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
            } else {
                return;
            }
        } else {
            return;
        }
    }
}

// Compiles a sequence of statements.
// Does not handle theenclosing "{}".
fn compile_statements(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    if tokens.next().unwrap().expect_statement().is_err() {
        return;
    }

    while let Ok(statement) = tokens.next().unwrap().expect_statement() {
        match statement {
            KeywordKind::Let    => compile_let(output, tokens, st),
            KeywordKind::If     => compile_if(output, tokens, st),
            KeywordKind::While  => compile_while(output, tokens, st),
            KeywordKind::Do     => compile_do(output, tokens, st),
            KeywordKind::Return => compile_return(output, tokens, st),
            _ => break,  // unreachable this code
        }
    }
}

// Compiles a let statement.
fn compile_let(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    match tokens.consume().unwrap().expect_keyword() {
        Ok(_) => {  // determinate "let"
            let token = tokens.next().unwrap();
            let varName = token.expect_identifier().unwrap();
            tokens.consume();
            let ret = if tokens.next().unwrap().expect_symbol(SymbolKind::LSquare).is_ok() {
                // Array
                tokens.consume();
                compile_expression(output, tokens, st);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RSquare).unwrap();
                *output += &format!("push {} {}\n", st.kind_of(&varName).unwrap(), st.index_of(&varName).unwrap());
                *output += "add\n";
                "pop temp 0\npop pointer 1\npush temp 0\npop that 0\n".to_string()
            } else {
                format!("pop {} {}\n", st.kind_of(&varName).unwrap(), st.index_of(&varName).unwrap())
            };
            tokens.consume().unwrap().expect_symbol(SymbolKind::Eq).unwrap();
            compile_expression(output, tokens, st);
            tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
            *output += &ret;
        },
        Err(e) => panic!(e),
    }
}

// Compiles an if statement, possibly with a trailing else clause.
fn compile_if(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    match tokens.consume().unwrap().expect_keyword() {
        Ok(_) => {  // determinate "if"
            let serial = st.get_serial_and_inc();
            tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
            compile_expression(output, tokens, st);
            tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
            *output += &format!("not\nif-goto else{}\n", serial);
            tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
            st.scope_in();
            compile_statements(output, tokens, st);
            tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
            st.scope_out();
            *output += &format!("goto ifend{}\n", serial);
            *output += &format!("label else{}\n", serial);
            if let Ok(keyword) = tokens.next().unwrap().expect_keyword() {
                if keyword == "else" {
                    tokens.consume();
                    tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
                    st.scope_in();
                    compile_statements(output, tokens, st);
                    tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
                    st.scope_out();
                }
            }
            *output += &format!("label ifend{}\n", serial);
        },
        Err(e) => panic!(e)
    }
}

// Compiles a while statement.
fn compile_while(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    match tokens.consume().unwrap().expect_keyword() {
        Ok(_) => {  // determinate "while"
            let serial = st.get_serial_and_inc();
            *output += &format!("label whilebegin{}\n", serial);
            tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
            compile_expression(output, tokens, st);
            tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
            *output += &format!("not\nif-goto whileend{}\n", serial);
            tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
            st.scope_in();
            compile_statements(output, tokens, st);
            *output += &format!("goto whilebegin{}\n", serial);
            tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
            st.scope_out();
            *output += &format!("label whileend{}\n", serial);
        },
        Err(e) => panic!(e)
    }
}

// Compiles a do statement.
fn compile_do(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    match tokens.consume().unwrap().expect_keyword() {
        Ok(_) => {  // determinate "do"
            // subroutineCall
            let token = tokens.next().unwrap();
            let ident = token.expect_identifier().unwrap();
            tokens.consume();
            if tokens.next().unwrap().expect_symbol(SymbolKind::LParen).is_ok() {
                // subroutineCall:  subroutineName '(' expressionList ')'
                tokens.consume();
                let nArgs = if st.is_method(&ident) {
                    *output += "push pointer 0\n";
                    compile_expression_list(output, tokens, st)+1
                } else {
                    compile_expression_list(output, tokens, st)
                };
                *output += &format!("call {}.{} {}\n", st.class_name, ident, nArgs);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
            } else {
                // subroutineCall:  (className | varName) '.' subroutineName '(' expressionList ')'
                tokens.consume().unwrap().expect_symbol(SymbolKind::Period).unwrap();
                let token = tokens.next().unwrap();
                let subroutineName = token.expect_identifier().unwrap();
                tokens.consume();
                tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
                let (ident, nArgs) = if let Some(VarType::ClassName(cn)) = st.type_of(&ident) {
                    // method
                    *output += &format!("push {} {}\n", st.kind_of(&ident).unwrap(), st.index_of(&ident).unwrap());
                    (cn, compile_expression_list(output, tokens, st)+1)
                } else {
                    // function
                    (ident.to_string(), compile_expression_list(output, tokens, st))
                };
                *output += &format!("call {}.{} {}\n", ident, subroutineName, nArgs);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
            }
            tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
            *output += "pop temp 0\n";
        },
        Err(e) => panic!(e)
    }
}

// Compiles a return statement.
fn compile_return(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    match tokens.consume().unwrap().expect_keyword() {
        Ok(_) => {  // determinate "return"
            // (expression)?
            if tokens.next().unwrap().expect_symbol(SymbolKind::Semicolon).is_err() {
                compile_expression(output, tokens, st);
            } else {
                *output += "push constant 0\n";  // void
            }
            tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
            *output += "return\n";
        },
        Err(e) => panic!(e)
    }
}

// Compiles an expression.
fn compile_expression(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    // TODO AST
    let mut ops = Vec::new();
    compile_term(output, tokens, st);
    while let Ok(op) = tokens.next().unwrap().expect_op() {
        tokens.consume();
        ops.push(op.to_string());
        compile_term(output, tokens, st);
    }
    for op in ops.iter() {
        *output += &format!("{}\n", op);
    }
}

// Compiles a term.
// If the current token is an identifier, the routine must distinguish between a variable,
// an array entry, or a subroutine call.
// A single look-ahead token, which may be one of "[","(", or "."
// suffices to distinguish between the possibilities.
// Any other token is not part of this term and should not be advanced over.
fn compile_term(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) {
    let token = tokens.consume().unwrap();
    match token.kind() {
        TokenKind::IntConst(int) => *output += &format!("push constant {}\n", int),
        TokenKind::StringConst(string) => {
            *output += &format!("push constant {}\n", string.len());
            *output += "call String.new 1\n";
            for ch in string.bytes() {
                *output += &format!("push constant {}\n", ch);
                *output += "call String.appendChar 2\n";
            }
        },
        TokenKind::Keyword(keyword) => {
            match keyword {
                // keywordConstant
                KeywordKind::True  => *output += &format!("push constant 1\nneg\n"),
                KeywordKind::False |
                KeywordKind::Null  => *output += &format!("push constant 0\n"),
                KeywordKind::This  => *output += &format!("push pointer 0\n"),
                _ => panic!("{}: expect keywordConstant. but got {:?}", token.line_no(), keyword),
            }
        },
        TokenKind::Identifier(ident) => {
            if tokens.next().unwrap().expect_symbol(SymbolKind::LSquare).is_ok() {
                // term:   varName '[' expression ']'
                tokens.consume();
                compile_expression(output, tokens, st);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RSquare).unwrap();
                *output += &format!("push {} {}\n", st.kind_of(&ident).unwrap(), st.index_of(&ident).unwrap());
                *output += "add\n";
                *output += "pop pointer 1\n";
                *output += "push that 0\n";
            } else if tokens.next().unwrap().expect_symbol(SymbolKind::LParen).is_ok() {
                // subroutineCall:  subroutineName '(' expressionList ')'
                tokens.consume();
                let nArgs = if st.is_method(&ident) {
                    *output += "push pointer 0\n";
                    compile_expression_list(output, tokens, st)+1
                } else {
                    compile_expression_list(output, tokens, st)
                };
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                *output += &format!("call {}.{} {}\n", st.class_name, ident, nArgs);
            } else if tokens.next().unwrap().expect_symbol(SymbolKind::Period).is_ok() {
                // subroutineCall:  (className | varName) '.' subroutineName '(' expressionList ')'
                tokens.consume();
                let token = tokens.next().unwrap();
                let subroutineName = token.expect_identifier().unwrap();
                tokens.consume();
                tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
                let (ident, nArgs) = if let Some(VarType::ClassName(cn)) = st.type_of(&ident) {
                    // method
                    *output += &format!("push {} {}\n", st.kind_of(&ident).unwrap(), st.index_of(&ident).unwrap());
                    (cn, compile_expression_list(output, tokens, st)+1)
                } else {
                    // function
                    (ident.to_string(), compile_expression_list(output, tokens, st))
                };
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                *output += &format!("call {}.{} {}\n", ident, subroutineName, nArgs);
            } else {
                *output += &format!("push {} {}\n", st.kind_of(&ident).unwrap(), st.index_of(&ident).unwrap());
            }
        },
        TokenKind::Symbol(symbol) => {
            match symbol {
                // '(' expression ')'
                SymbolKind::LParen => {
                    compile_expression(output, tokens, st);
                    tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                },
                // unaryOp term
                SymbolKind::Minus => {
                    compile_term(output, tokens, st);
                    *output += "neg\n";
                },
                SymbolKind::Not => {
                    compile_term(output, tokens, st);
                    *output += "not\n";
                },
                _ => panic!("{}: unexpect symbol: {:?}", token.line_no(), symbol),
            }
        },
    }
}

// Compiles a (possibly empty) comma-separated list of expressions.
fn compile_expression_list(output: &mut String, tokens: &mut Tokens, st: &mut SymbolTable) -> usize {
    let mut exp_cnt = 0;
    if tokens.next().unwrap().expect_symbol(SymbolKind::RParen).is_err() {
        compile_expression(output, tokens, st);
        exp_cnt += 1;
        while tokens.next().unwrap().expect_symbol(SymbolKind::Comma).is_ok() {
            tokens.consume();
            compile_expression(output, tokens, st);
            exp_cnt += 1;
        }
    }
    exp_cnt
}

