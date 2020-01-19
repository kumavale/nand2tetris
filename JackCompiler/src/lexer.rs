
use std::str::Chars;
use super::token::*;

pub fn tokenize(input: &str) -> Tokens {
    let mut tokens = Vec::new();
    let mut line_no = 1;
    let mut input_chars = input.chars();

    while let Some(ch) = input_chars.next() {
        match ch {
            ' ' | '\t' | '\r' => (/* skip whitespace */),
            '\n' => line_no += 1,
            '/' => {
                let next = input_chars.nth(0).unwrap();
                match next {
                    '/' => until_ignore(&mut input_chars, "\n"),
                    '*' => until_ignore(&mut input_chars, "*/"),
                    _ => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Slash), line_no)),
                }
            },
            '{' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::LBracket),  line_no)),
            '}' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::RBracket),  line_no)),
            '(' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::LParen),    line_no)),
            ')' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::RParen),    line_no)),
            '[' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::LSquare),   line_no)),
            ']' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::RSquare),   line_no)),
            '.' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Period),    line_no)),
            ',' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Comma),     line_no)),
            ';' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Semicolon), line_no)),
            '+' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Plus),      line_no)),
            '-' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Minus),     line_no)),
            '*' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Asterisk),  line_no)),
            '&' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::And),       line_no)),
            '|' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Or),        line_no)),
            '<' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Lt),        line_no)),
            '>' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Gt),        line_no)),
            '=' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Eq),        line_no)),
            '~' => tokens.push(Token::new(TokenKind::Symbol(SymbolKind::Not),       line_no)),
            '"' => {
                let mut string = String::new();
                while let Some(ch) = input_chars.next() {
                    if ch == '"' {
                        break;
                    }
                    string.push(ch);
                }
                tokens.push(Token::new(TokenKind::StringConst(string), line_no));
            },
            _ => {
                if is_digit(ch) {
                    let int = str2int(ch, &mut input_chars) as u16;
                    if 32767 < int {
                        panic!("{}: a decimal number in the range 0..32767. but got {}", line_no, int);
                    }
                    tokens.push(Token::new(TokenKind::IntConst(int), line_no));
                } else if is_alnum_(ch) {
                    if let Some(kind) = is_keyword(ch, &mut input_chars) {
                        tokens.push(Token::new(TokenKind::Keyword(kind), line_no));
                    } else {
                        let ident = read_ident(ch, &mut input_chars);
                        tokens.push(Token::new(TokenKind::Identifier(ident), line_no));
                    }
                } else {
                    panic!("{}: illegal letter: '{}'", line_no, ch);
                }
            }
        }
    }

    Tokens::new(tokens)
}

fn until_ignore(input_chars: &mut Chars, last: &str) {
    while !input_chars.as_str().starts_with(last) {
        input_chars.next();
    }
    if last != "\n" {
        input_chars.next();
        input_chars.next();
    }
}

fn starts_with(input_chars: &mut Chars, s: &str) -> bool {
    if !input_chars.as_str().starts_with(s) {
        return false;
    }
    for _ in 0..s.len() {
        input_chars.next();
    }
    true
}

fn is_keyword(ch: char, mut input_chars: &mut Chars) -> Option<KeywordKind> {
    if ch == 'c' && starts_with(&mut input_chars, "lass")            { Some(KeywordKind::Class) }
    else if ch == 'm' && starts_with(&mut input_chars, "ethod")      { Some(KeywordKind::Method) }
    else if ch == 'f' && starts_with(&mut input_chars, "unction")    { Some(KeywordKind::Function) }
    else if ch == 'c' && starts_with(&mut input_chars, "onstructor") { Some(KeywordKind::Constructor) }
    else if ch == 'i' && starts_with(&mut input_chars, "nt")         { Some(KeywordKind::Int) }
    else if ch == 'b' && starts_with(&mut input_chars, "oolean")     { Some(KeywordKind::Boolean) }
    else if ch == 'c' && starts_with(&mut input_chars, "har")        { Some(KeywordKind::Char) }
    else if ch == 'v' && starts_with(&mut input_chars, "oid")        { Some(KeywordKind::Void) }
    else if ch == 'v' && starts_with(&mut input_chars, "ar")         { Some(KeywordKind::Var) }
    else if ch == 's' && starts_with(&mut input_chars, "tatic")      { Some(KeywordKind::Static) }
    else if ch == 'f' && starts_with(&mut input_chars, "ield")       { Some(KeywordKind::Field) }
    else if ch == 'l' && starts_with(&mut input_chars, "et")         { Some(KeywordKind::Let) }
    else if ch == 'd' && starts_with(&mut input_chars, "o")          { Some(KeywordKind::Do) }
    else if ch == 'i' && starts_with(&mut input_chars, "f")          { Some(KeywordKind::If) }
    else if ch == 'e' && starts_with(&mut input_chars, "lse")        { Some(KeywordKind::Else) }
    else if ch == 'w' && starts_with(&mut input_chars, "hile")       { Some(KeywordKind::While) }
    else if ch == 'r' && starts_with(&mut input_chars, "eturn")      { Some(KeywordKind::Return) }
    else if ch == 't' && starts_with(&mut input_chars, "rue")        { Some(KeywordKind::True) }
    else if ch == 'f' && starts_with(&mut input_chars, "alse")       { Some(KeywordKind::False) }
    else if ch == 'n' && starts_with(&mut input_chars, "ull")        { Some(KeywordKind::Null) }
    else if ch == 't' && starts_with(&mut input_chars, "his")        { Some(KeywordKind::This) }
    else { None }
}

fn read_ident(ch: char, input_chars: &mut Chars) -> String {
    let mut ident = ch.to_string();
    for ch in input_chars.as_str().chars() {
        if is_alnum_(ch) {
            ident.push(ch);
            input_chars.next();
        } else {
            break;
        }
    }
    ident
}

fn is_digit(ch: char) -> bool {
    '0' <= ch && ch <= '9'
}

fn is_alnum_(ch: char) -> bool {
    'a' <= ch && ch <= 'z' || 'A' <= ch && ch <= 'Z' || ch == '_' || is_digit(ch)
}

fn ch2int(ch: char) -> u32 {
    ch as u32 - 48
}

fn str2int(ch: char, input_chars: &mut Chars) -> u32 {
    let mut int = ch2int(ch);
    let input_str = input_chars.as_str();
    for num in input_str.chars() {
        if is_digit(num) {
            int = int * 10 + ch2int(num);
            input_chars.next();
        } else {
            break;
        }
    }
    int
}

#[allow(dead_code)]
pub fn tokenize_tokens_XML(tokens: &mut Tokens) -> String {
    let mut xml = String::from("<tokens>\n");

    while let Some(token) = tokens.consume() {
        match token.kind() {
            TokenKind::Keyword(kind) => {
                xml += "<keyword> ";
                xml += match kind {
                    KeywordKind::Class => "class",
                    KeywordKind::Method => "method",
                    KeywordKind::Function => "function",
                    KeywordKind::Constructor => "constructor",
                    KeywordKind::Int => "int",
                    KeywordKind::Boolean => "boolean",
                    KeywordKind::Char => "char",
                    KeywordKind::Void => "void",
                    KeywordKind::Var => "var",
                    KeywordKind::Static => "static",
                    KeywordKind::Field => "field",
                    KeywordKind::Let => "let",
                    KeywordKind::Do => "do",
                    KeywordKind::If => "if",
                    KeywordKind::Else => "else",
                    KeywordKind::While => "while",
                    KeywordKind::Return => "return",
                    KeywordKind::True => "true",
                    KeywordKind::False => "false",
                    KeywordKind::Null => "null",
                    KeywordKind::This => "this",
                };
                xml += " </keyword>\n";
            },
            TokenKind::Symbol(kind) => {
                xml += "<symbol> ";
                xml += match kind {
                    SymbolKind::LBracket =>  "{",
                    SymbolKind::RBracket =>  "}",
                    SymbolKind::LParen =>    "(",
                    SymbolKind::RParen =>    ")",
                    SymbolKind::LSquare =>   "[",
                    SymbolKind::RSquare =>   "]",
                    SymbolKind::Period =>    ".",
                    SymbolKind::Comma =>     ",",
                    SymbolKind::Semicolon => ";",
                    SymbolKind::Plus =>      "+",
                    SymbolKind::Minus =>     "-",
                    SymbolKind::Asterisk =>  "*",
                    SymbolKind::Slash =>     "/",
                    SymbolKind::And =>       "&amp;",
                    SymbolKind::Or =>        "|",
                    SymbolKind::Lt =>        "&lt;",
                    SymbolKind::Gt =>        "&gt;",
                    SymbolKind::Eq =>        "=",
                    SymbolKind::Not =>       "~",
                };
                xml += " </symbol>\n";
            },
            TokenKind::Identifier(ident) => {
                xml += "<identifier> ";
                xml += &ident;
                xml += " </identifier>\n";
            },
            TokenKind::IntConst(int) => {
                xml += "<integerConstant> ";
                xml += &int.to_string();
                xml += " </integerConstant>\n";
            },
            TokenKind::StringConst(string) => {
                xml += "<stringConstant> ";
                xml += &string;
                xml += " </stringConstant>\n";
            },
        }
    }

    xml += "</tokens>";
    xml
}


#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn check_is_digit() {
        assert!(is_digit('0'));
        assert!(is_digit('9'));
        assert!(!is_digit('A'));
    }

    #[test]
    fn check_ch2int() {
        assert_eq!(ch2int('0'), 0);
        assert_eq!(ch2int('9'), 9);
    }

    #[test]
    fn check_str2int() {
        let mut input1 = "42".chars();
        let mut input2 = "123abc".chars();
        assert_eq!(str2int(input1.next().unwrap(), &mut input1), 42);
        assert_eq!(str2int(input2.next().unwrap(), &mut input2), 123);
    }

    #[test]
    fn keywords() {
        let input = "class method function constructor int boolean char void var static field let do if else while return true false null this";
        let expect = Tokens::new(vec![
            Token::new(TokenKind::Keyword(KeywordKind::Class),       1),
            Token::new(TokenKind::Keyword(KeywordKind::Method),      1),
            Token::new(TokenKind::Keyword(KeywordKind::Function),    1),
            Token::new(TokenKind::Keyword(KeywordKind::Constructor), 1),
            Token::new(TokenKind::Keyword(KeywordKind::Int),         1),
            Token::new(TokenKind::Keyword(KeywordKind::Boolean),     1),
            Token::new(TokenKind::Keyword(KeywordKind::Char),        1),
            Token::new(TokenKind::Keyword(KeywordKind::Void),        1),
            Token::new(TokenKind::Keyword(KeywordKind::Var),         1),
            Token::new(TokenKind::Keyword(KeywordKind::Static),      1),
            Token::new(TokenKind::Keyword(KeywordKind::Field),       1),
            Token::new(TokenKind::Keyword(KeywordKind::Let),         1),
            Token::new(TokenKind::Keyword(KeywordKind::Do),          1),
            Token::new(TokenKind::Keyword(KeywordKind::If),          1),
            Token::new(TokenKind::Keyword(KeywordKind::Else),        1),
            Token::new(TokenKind::Keyword(KeywordKind::While),       1),
            Token::new(TokenKind::Keyword(KeywordKind::Return),      1),
            Token::new(TokenKind::Keyword(KeywordKind::True),        1),
            Token::new(TokenKind::Keyword(KeywordKind::False),       1),
            Token::new(TokenKind::Keyword(KeywordKind::Null),        1),
            Token::new(TokenKind::Keyword(KeywordKind::This),        1),
        ]);
        assert_eq!(tokenize(&input), expect);
    }

    #[test]
    fn Identifiers() {
        let input = "main INT Abc_123";
        let expect = Tokens::new(vec![
            Token::new(TokenKind::Identifier("main".to_string()),    1),
            Token::new(TokenKind::Identifier("INT".to_string()),     1),
            Token::new(TokenKind::Identifier("Abc_123".to_string()), 1),
        ]);
        assert_eq!(tokenize(&input), expect);
    }

    #[test]
    fn comments() {
        let com1 = "123 // comment\n    456";
        let com2 = "123 /* comment */\n 456";
        let com3 = "123 /** API */\n    456";
        let expect = Tokens::new(vec![
            Token::new(TokenKind::IntConst(123), 1),
            Token::new(TokenKind::IntConst(456), 2),
        ]);
        assert_eq!(tokenize(&com1), expect);
        assert_eq!(tokenize(&com2), expect);
        assert_eq!(tokenize(&com3), expect);
    }
}

