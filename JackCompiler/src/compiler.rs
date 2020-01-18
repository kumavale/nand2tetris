///           class:  'class' className '{' classVarDec* subroutineDec* '}'
///     classVarDec:  ('static'|'field') type varName (','varName)* ';'
///            type:  'int'|'char'|'boolean'|className
///   subroutineDec:  ('constructor'|'function'|'method') ('void'|type)subroutineName
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
///     ifStatement:  'if' '(' expression ')' '{' sattements '}' ('else' '{' statements '}')?
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
///              op:  '+' | '-' | '*' | '/' | '&' | '|' | '<' | '>' | '='
///         unaryOp:  '-' | '~'
/// keywordConstant:  'true' | 'false' | 'null' | 'this'
///
/// integerConstant:  0..32767
///  stringConstant:  '"' a sequence of Unicode characters not including double quote or newline '"'
///      identifier:  a sequence of letters, digits, and underscore ('_') not starting with a digit.

use super::token::*;

pub fn compile(tokens: &[Token]) -> String {
    let mut output = String::new();
    compile_class(&mut output, &mut tokens.iter(), 0);
    output
}

// Compiles a complete class.
fn compile_class(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
    let nest = nest + 1;
    *output += "<class>\n";
    tokens.next();
    *output += &format!("{}<keyword> class </keyword>\n", "  ".repeat(nest));
    let class_name = tokens.next().unwrap().expect_identifier();
    *output += &format!("{}<identifier> {} </identifier>\n", "  ".repeat(nest), class_name);
    tokens.next().unwrap().expect_symbol(SymbolKind::LBracket);
    *output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest), "{");
    compile_class_var_dec(output, tokens, nest);
    compile_subroutine_dec(output, tokens, nest);
    //tokens.next().unwrap().expect_symbol(SymbolKind::RBracket);
    //*output += &format!("{}<symbol> {} </symbol>\n", "  ".repeat(nest), "}");
    *output += "</class>";
}

// Compiles a static variable declaration, or a field declaration.
fn compile_class_var_dec(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a complete method, function, or constructor.
fn compile_subroutine_dec(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a (possibly empty) parameter list.
// Does not handle the enclosing "()".
fn compile_parameter_list(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a subroutine's body.
fn compile_subroutine_body(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a var declaration.
fn compile_var_dec(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a sequence of statements.
// Does not handle theenclosing "{}".
fn compile_statements(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a let statement.
fn compile_let(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles an if statement, possibly with a trailing else clause.
fn compile_if(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a while statement.
fn compile_while(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a do statement.
fn compile_do(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a return statement.
fn compile_return(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles an expression.
fn compile_expression(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a term.
// If the current token is an identifier, the routine must distinguish between a variable,
// an array entry, or a subroutine call.
// A single look-ahead token, which may be one of "[","(", or "."
// suffices to distinguish between the possibilities.
// Any other token is not part of this term and should not be advanced over.
fn compile_term(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

// Compiles a (possibly empty) comma-separated list of expressions.
fn compile_expression_list(output: &mut String, tokens: &mut std::slice::Iter<Token>, nest: usize) {
}

