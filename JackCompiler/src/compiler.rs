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

pub fn compile(tokens: &mut Tokens) -> String {
    let mut output = String::new();
    compile_class(&mut output, tokens, 1);
    output
}

// Compiles a complete class.
fn compile_class(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += "<class>\n";
    tokens.consume();
    *output += &format!("{}<keyword> class </keyword>\n", "  ".repeat(nest));
    let class_name = tokens.consume().unwrap().expect_identifier().unwrap();
    *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest), class_name);
    tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest), "{");
    compile_class_var_dec(output, tokens, nest);
    compile_subroutine_dec(output, tokens, nest);
    tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest), "}");
    *output += "</class>";
}

// Compiles a static variable declaration, or a field declaration.
fn compile_class_var_dec(output: &mut String, tokens: &mut Tokens, nest: usize) {
    while let Some(next) = tokens.next() {
        if let Ok(keyword) = next.expect_keyword() {
            if keyword == "static" || keyword == "field" {
                tokens.consume();
                *output += &format!("{}<classVarDec>\n", "  ".repeat(nest));
                *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
                if let Ok(t) = tokens.consume().unwrap().expect_type() {
                    if t == "void" || t == "int" || t == "char" || t == "boolean" {
                        *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), t);
                    } else {
                        *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), t);
                    }
                }
                let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), varName);
                while let Some(next) = tokens.next() {
                    if next.expect_symbol(SymbolKind::Comma).is_ok() {
                        tokens.consume();
                        *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ",");
                        let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                        *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), varName);
                    } else {
                        break;
                    }
                }
                tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ";");
                *output += &format!("{}</classVarDec>\n", "  ".repeat(nest));
            } else {
                return;
            }
        } else {
            return;
        }
    }
}

// Compiles a complete method, function, or constructor.
fn compile_subroutine_dec(output: &mut String, tokens: &mut Tokens, nest: usize) {
    while let Some(next) = tokens.next() {
        if let Ok(keyword) = next.expect_keyword() {
            if keyword == "constructor" || keyword == "function" || keyword == "method" {
                tokens.consume();
                *output += &format!("{}<subroutineDec>\n", "  ".repeat(nest));
                *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
                if let Ok(t) = tokens.consume().unwrap().expect_type() {
                    if t == "void" || t == "int" || t == "char" || t == "boolean" {
                        *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), t);
                    } else {
                        *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), t);
                    }
                }
                let subroutineName = tokens.consume().unwrap().expect_identifier().unwrap();
                *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), subroutineName);
                tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "(");
                compile_parameter_list(output, tokens, nest+1);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ")");
                compile_subroutine_body(output, tokens, nest+1);
                *output += &format!("{}</subroutineDec>\n", "  ".repeat(nest));
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
fn compile_parameter_list(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<parameterList>\n", "  ".repeat(nest));
    if let Some(next) = tokens.next() {
        if let Ok(t) = next.expect_type() {
            tokens.consume();
            if t == "void" || t == "int" || t == "char" || t == "boolean" {
                *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), t);
            } else {
                *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), t);
            }
            let varName = tokens.consume().unwrap().expect_identifier().unwrap();
            *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), varName);
            while tokens.next().unwrap().expect_symbol(SymbolKind::Comma).is_ok() {
                tokens.consume();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ",");
                if let Ok(t) = tokens.consume().unwrap().expect_type() {
                    if t == "void" || t == "int" || t == "char" || t == "boolean" {
                        *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), t);
                    } else {
                        *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), t);
                    }
                }
                let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), varName);
            }
        }
    }
    *output += &format!("{}</parameterList>\n", "  ".repeat(nest));
}

// Compiles a subroutine's body.
fn compile_subroutine_body(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<subroutineBody>\n", "  ".repeat(nest));
    tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "{");
    compile_var_dec(output, tokens, nest+1);
    compile_statements(output, tokens, nest+1);
    tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "}");
    *output += &format!("{}</subroutineBody>\n", "  ".repeat(nest));
}

// Compiles a var declaration.
fn compile_var_dec(output: &mut String, tokens: &mut Tokens, nest: usize) {
    while let Some(next) = tokens.next() {
        if let Ok(keyword) = next.expect_keyword() {
            if keyword == "var" {
                tokens.consume();
                *output += &format!("{}<varDec>\n", "  ".repeat(nest));
                *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
                if let Ok(t) = tokens.consume().unwrap().expect_type() {
                    if t == "void" || t == "int" || t == "char" || t == "boolean" {
                        *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), t);
                    } else {
                        *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), t);
                    }
                }
                let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), varName);
                while tokens.next().unwrap().expect_symbol(SymbolKind::Comma).is_ok() {
                    tokens.consume();
                    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ",");
                    let varName = tokens.consume().unwrap().expect_identifier().unwrap();
                    *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), varName);
                }
                tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ";");
                *output += &format!("{}</varDec>\n", "  ".repeat(nest));
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
fn compile_statements(output: &mut String, tokens: &mut Tokens, nest: usize) {
    if tokens.next().unwrap().expect_statement().is_ok() {
        *output += &format!("{}<statements>\n", "  ".repeat(nest));
    } else {
        return;
    }
    while let Ok(statement) = tokens.next().unwrap().expect_statement() {
        match statement {
            KeywordKind::Let    => compile_let(output, tokens, nest+1),
            KeywordKind::If     => compile_if(output, tokens, nest+1),
            KeywordKind::While  => compile_while(output, tokens, nest+1),
            KeywordKind::Do     => compile_do(output, tokens, nest+1),
            KeywordKind::Return => compile_return(output, tokens, nest+1),
            _ => break,  // unreachable this code
        }
    }
    *output += &format!("{}</statements>\n", "  ".repeat(nest));
}

// Compiles a let statement.
fn compile_let(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<letStatement>\n", "  ".repeat(nest));
    match tokens.consume().unwrap().expect_keyword() {
        Ok(keyword) => {  // determinate "let"
            *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
            let varName = tokens.consume().unwrap().expect_identifier().unwrap();
            *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), varName);
            if tokens.next().unwrap().expect_symbol(SymbolKind::LSquare).is_ok() {
                tokens.consume();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "[");
                compile_expression(output, tokens, nest+1);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RSquare).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "]");
            }
            tokens.consume().unwrap().expect_symbol(SymbolKind::Eq).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "=");
            compile_expression(output, tokens, nest+1);
            tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ";");
        },
        Err(e) => panic!(e),
    }
    *output += &format!("{}</letStatement>\n", "  ".repeat(nest));
}

// Compiles an if statement, possibly with a trailing else clause.
fn compile_if(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<ifStatement>\n", "  ".repeat(nest));
    match tokens.consume().unwrap().expect_keyword() {
        Ok(keyword) => {  // determinate "if"
            *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
            tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "(");
            compile_expression(output, tokens, nest+1);
            tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ")");
            tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "{");
            compile_statements(output, tokens, nest+1);
            tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "}");
            if let Ok(keyword) = tokens.next().unwrap().expect_keyword() {
                if keyword == "else" {
                    tokens.consume();
                    *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
                    tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
                    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "{");
                    compile_statements(output, tokens, nest+1);
                    tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
                    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "}");
                }
            }
        },
        Err(e) => panic!(e)
    }
    *output += &format!("{}</ifStatement>\n", "  ".repeat(nest));
}

// Compiles a while statement.
/// whileStatement:  'while' '(' expression ')' '{' statements '}'
fn compile_while(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<whileStatement>\n", "  ".repeat(nest));
    match tokens.consume().unwrap().expect_keyword() {
        Ok(keyword) => {  // determinate "while"
            *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
            tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "(");
            compile_expression(output, tokens, nest+1);
            tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ")");
            tokens.consume().unwrap().expect_symbol(SymbolKind::LBracket).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "{");
            compile_statements(output, tokens, nest+1);
            tokens.consume().unwrap().expect_symbol(SymbolKind::RBracket).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "}");
        },
        Err(e) => panic!(e)
    }
    *output += &format!("{}</whileStatement>\n", "  ".repeat(nest));
}

// Compiles a do statement.
fn compile_do(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<doStatement>\n", "  ".repeat(nest));
    match tokens.consume().unwrap().expect_keyword() {
        Ok(keyword) => {  // determinate "do"
            *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
            // subroutineCall
            let ident = tokens.consume().unwrap().expect_identifier().unwrap();
            *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), ident);
            if tokens.next().unwrap().expect_symbol(SymbolKind::LParen).is_ok() {
                // subroutineCall:  subroutineName '(' expressionList ')'
                tokens.consume();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "(");
                compile_expression_list(output, tokens, nest+1);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ")");
            } else {
                // subroutineCall:  (className | varName) '.' subroutineName '(' expressionList ')'
                tokens.consume().unwrap().expect_symbol(SymbolKind::Period).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ".");
                let subroutineName = tokens.consume().unwrap().expect_identifier().unwrap();
                *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), subroutineName);
                tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "(");
                compile_expression_list(output, tokens, nest+1);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ")");
            }
            tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ";");
        },
        Err(e) => panic!(e)
    }
    *output += &format!("{}</doStatement>\n", "  ".repeat(nest));
}

// Compiles a return statement.
fn compile_return(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<returnStatement>\n", "  ".repeat(nest));
    match tokens.consume().unwrap().expect_keyword() {
        Ok(keyword) => {  // determinate "return"
            *output += &format!("{}<keyword> {} </keyword>\n", "  ".repeat(nest+1), keyword);
            // expression
            if tokens.next().unwrap().expect_symbol(SymbolKind::Semicolon).is_err() {
                compile_expression(output, tokens, nest+1);
            }
            tokens.consume().unwrap().expect_symbol(SymbolKind::Semicolon).unwrap();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ";");
        },
        Err(e) => panic!(e)
    }
    *output += &format!("{}</returnStatement>\n", "  ".repeat(nest));
}

// Compiles an expression.
fn compile_expression(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<expression>\n", "  ".repeat(nest));
    compile_term(output, tokens, nest+1);
    while let Ok(op) = tokens.next().unwrap().expect_op() {
        tokens.consume();
        *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), op);
        compile_term(output, tokens, nest+1);
    }
    *output += &format!("{}</expression>\n", "  ".repeat(nest));
}

// Compiles a term.
// If the current token is an identifier, the routine must distinguish between a variable,
// an array entry, or a subroutine call.
// A single look-ahead token, which may be one of "[","(", or "."
// suffices to distinguish between the possibilities.
// Any other token is not part of this term and should not be advanced over.
fn compile_term(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<term>\n", "  ".repeat(nest));
    let token = tokens.consume().unwrap();
    match token.kind() {
        TokenKind::IntConst(int)
            => *output += &format!("{}<integerConstant> {} </integerConstant>\n", "  ".repeat(nest+1), int),
        TokenKind::StringConst(string)
            => *output += &format!("{}<stringConstant> {} </stringConstant>\n", "  ".repeat(nest+1), string),
        TokenKind::Keyword(keyword) => {
            match keyword {
                // keywordConstant
                KeywordKind::True  => *output += &format!("{}<keyword> true </keyword>\n", "  ".repeat(nest+1)),
                KeywordKind::False => *output += &format!("{}<keyword> false </keyword>\n", "  ".repeat(nest+1)),
                KeywordKind::Null  => *output += &format!("{}<keyword> null </keyword>\n", "  ".repeat(nest+1)),
                KeywordKind::This  => *output += &format!("{}<keyword> this </keyword>\n", "  ".repeat(nest+1)),
                _ => panic!("{}: expect keywordConstant. but got {:?}", token.line_no(), keyword),
            }
        },
        TokenKind::Identifier(ident) => {
            *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), ident);
            if tokens.next().unwrap().expect_symbol(SymbolKind::LSquare).is_ok() {
                // term:   varName '[' expression ']'
                tokens.consume();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "[");
                compile_expression(output, tokens, nest+1);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RSquare).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "]");
            } else if tokens.next().unwrap().expect_symbol(SymbolKind::LParen).is_ok() {
                // subroutineCall:  subroutineName '(' expressionList ')'
                tokens.consume();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "(");
                compile_expression_list(output, tokens, nest+1);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ")");
            } else if tokens.next().unwrap().expect_symbol(SymbolKind::Period).is_ok() {
                // subroutineCall:  (className | varName) '.' subroutineName '(' expressionList ')'
                tokens.consume();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ".");
                let subroutineName = tokens.consume().unwrap().expect_identifier().unwrap();
                *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest+1), subroutineName);
                tokens.consume().unwrap().expect_symbol(SymbolKind::LParen).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "(");
                compile_expression_list(output, tokens, nest+1);
                tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ")");
            }
        },
        TokenKind::Symbol(symbol) => {
            match symbol {
                // '(' expression ')'
                SymbolKind::LParen => {
                    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "(");
                    compile_expression(output, tokens, nest+1);
                    tokens.consume().unwrap().expect_symbol(SymbolKind::RParen).unwrap();
                    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ")");
                },
                // unaryOp term
                SymbolKind::Minus => {
                    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "-");
                    compile_term(output, tokens, nest+1);
                },
                SymbolKind::Not => {
                    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), "~");
                    compile_term(output, tokens, nest+1);
                },
                _ => panic!("{}: unexpect symbol: {:?}", token.line_no(), symbol),
            }
        },
    }
    *output += &format!("{}</term>\n", "  ".repeat(nest));
}

// Compiles a (possibly empty) comma-separated list of expressions.
fn compile_expression_list(output: &mut String, tokens: &mut Tokens, nest: usize) {
    *output += &format!("{}<expressionList>\n", "  ".repeat(nest));
    if tokens.next().unwrap().expect_symbol(SymbolKind::RParen).is_err() {
        compile_expression(output, tokens, nest+1);
        while tokens.next().unwrap().expect_symbol(SymbolKind::Comma).is_ok() {
            tokens.consume();
            *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest+1), ",");
            compile_expression(output, tokens, nest+1);
        }
    }
    *output += &format!("{}</expressionList>\n", "  ".repeat(nest));
}


#[cfg(test)]
mod tests {
    //use super::*;

    // At the time of project 11
    //#[test]
    //fn class() {
    //}
}

