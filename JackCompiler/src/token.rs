
#[derive(Copy, Clone, Debug, PartialEq)]
pub enum KeywordKind {
    Class,
    Method,
    Function,
    Constructor,
    Int,
    Boolean,
    Char,
    Void,
    Var,
    Static,
    Field,
    Let,
    Do,
    If,
    Else,
    While,
    Return,
    True,
    False,
    Null,
    This,
}

#[derive(Copy, Clone, Debug, PartialEq)]
pub enum SymbolKind {
    LBracket,
    RBracket,
    LParen,
    RParen,
    LSquare,
    RSquare,
    Period,
    Comma,
    Semicolon,
    Plus,
    Minus,
    Asterisk,
    Slash,
    And,
    Or,
    Lt,
    Gt,
    Eq,
    Not,
}

#[derive(Clone, Debug, PartialEq)]
#[allow(non_camel_case_types)]
pub enum TokenKind {
    Keyword(KeywordKind),
    Symbol(SymbolKind),
    Identifier(String),
    IntConst(u16),
    StringConst(String),
}

#[derive(Debug, PartialEq)]
pub struct Token {
    kind: TokenKind,
    line_no: u32,
}

impl Token {
    pub fn new(kind: TokenKind, line_no: u32) -> Self {
        Token { kind, line_no }
    }

    pub fn kind(&self) -> &TokenKind {
        &self.kind
    }

    pub fn line_no(&self) -> u32 {
        self.line_no
    }

    pub fn expect_identifier(&self) -> &str {
        match &self.kind {
            TokenKind::Identifier(ident) => &ident,
            _ => panic!("{}: expect Identifier. but got {:?}", self.line_no, self.kind),
        }
    }

    pub fn expect_symbol(&self, kind: SymbolKind) {
        if self.kind != TokenKind::Symbol(kind) {
            panic!("{}: expect Symbol({:?}). but got {:?}", self.line_no, kind, self.kind);
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn get_kind_Keyword() {
        let token = Token { kind: TokenKind::Keyword(KeywordKind::Null), line_no: 0 };
        assert_eq!(token.kind(), &TokenKind::Keyword(KeywordKind::Null));
    }

    #[test]
    fn get_kind_Symbol() {
        let token = Token { kind: TokenKind::Symbol(SymbolKind::Not), line_no: 0 };
        assert_eq!(token.kind(), &TokenKind::Symbol(SymbolKind::Not));
    }

    #[test]
    fn get_kind_Identifier() {
        let token = Token { kind: TokenKind::Identifier("test".to_string()), line_no: 0 };
        assert_eq!(token.kind(), &TokenKind::Identifier("test".to_string()));
    }

    #[test]
    fn get_kind_IntConst() {
        let token = Token { kind: TokenKind::IntConst(42), line_no: 0 };
        assert_eq!(token.kind(), &TokenKind::IntConst(42));
    }

    #[test]
    fn get_kind_StringConst() {
        let token = Token { kind: TokenKind::StringConst("test".to_string()), line_no: 0 };
        assert_eq!(token.kind(), &TokenKind::StringConst("test".to_string()));
    }

    #[test]
    fn get_line_no() {
        let token = Token { kind: TokenKind::Keyword(KeywordKind::Class), line_no: 42 };
        assert_eq!(token.line_no(), 42);
    }
}

