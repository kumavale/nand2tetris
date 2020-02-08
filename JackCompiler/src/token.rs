
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

#[derive(Clone, Debug, PartialEq)]
pub struct Token {
    kind: TokenKind,
    line_no: u32,
}

impl Token {
    pub fn new(kind: TokenKind, line_no: u32) -> Self {
        Token { kind, line_no }
    }

    pub fn kind(&self) -> TokenKind {
        self.kind.clone()
    }

    pub fn line_no(&self) -> u32 {
        self.line_no
    }

    pub fn expect_op(&self) -> Result<&str, String> {
        match self.kind {
            TokenKind::Symbol(kind) => {
                match kind {
                    SymbolKind::Plus     => Ok("add"),
                    SymbolKind::Minus    => Ok("sub"),
                    SymbolKind::Asterisk => Ok("call Math.multiply 2"),
                    SymbolKind::Slash    => Ok("call Math.divide 2"),
                    SymbolKind::And      => Ok("and"),
                    SymbolKind::Or       => Ok("or"),
                    SymbolKind::Lt       => Ok("lt"),
                    SymbolKind::Gt       => Ok("gt"),
                    SymbolKind::Eq       => Ok("eq"),
                    _ => Err(format!("{}: expect op. but got {:?}", self.line_no, kind)),
                }
            },
            _ => Err(format!("{}: expect op. but got {:?}", self.line_no, self.kind)),
        }
    }

    pub fn expect_statement(&self) -> Result<KeywordKind, String> {
        match self.kind {
            TokenKind::Keyword(kind) => {
                match kind {
                    KeywordKind::Let |
                    KeywordKind::If |
                    KeywordKind::While |
                    KeywordKind::Do |
                    KeywordKind::Return => Ok(kind),
                    _ => Err(format!("{}: expect statement. but got {:?}", self.line_no, kind)),
                }
            },
            _ => Err(format!("{}: expect statement. but got {:?}", self.line_no, self.kind)),
        }
    }

    pub fn expect_type(&self) -> Result<&str, String> {
        match &self.kind {
            TokenKind::Keyword(kind) => {
                match kind {
                    KeywordKind::Int     => Ok("int"),
                    KeywordKind::Boolean => Ok("boolean"),
                    KeywordKind::Char    => Ok("char"),
                    KeywordKind::Void    => Ok("void"),
                    _ => Err(format!("{}: expect type. but got {:?}", self.line_no, kind)),
                }
            },
            TokenKind::Identifier(ident) => Ok(&ident),
            _ => Err(format!("{}: expect type. but got {:?}", self.line_no, self.kind)),
        }
    }

    pub fn expect_keyword(&self) -> Result<&str, String> {
        match &self.kind {
            TokenKind::Keyword(kind) => {
                match kind {
                    KeywordKind::Class       => Ok("class"),
                    KeywordKind::Method      => Ok("method"),
                    KeywordKind::Function    => Ok("function"),
                    KeywordKind::Constructor => Ok("constructor"),
                    KeywordKind::Int         => Ok("int"),
                    KeywordKind::Boolean     => Ok("boolean"),
                    KeywordKind::Char        => Ok("char"),
                    KeywordKind::Void        => Ok("void"),
                    KeywordKind::Var         => Ok("var"),
                    KeywordKind::Static      => Ok("static"),
                    KeywordKind::Field       => Ok("field"),
                    KeywordKind::Let         => Ok("let"),
                    KeywordKind::Do          => Ok("do"),
                    KeywordKind::If          => Ok("if"),
                    KeywordKind::Else        => Ok("else"),
                    KeywordKind::While       => Ok("while"),
                    KeywordKind::Return      => Ok("return"),
                    KeywordKind::True        => Ok("true"),
                    KeywordKind::False       => Ok("false"),
                    KeywordKind::Null        => Ok("null"),
                    KeywordKind::This        => Ok("this"),
                }
            },
            _ => Err(format!("{}: expect keyword. but got {:?}", self.line_no, self.kind)),
        }
    }

    pub fn expect_identifier(&self) -> Result<&str, String> {
        match &self.kind {
            TokenKind::Identifier(ident) => Ok(&ident),
            _ => Err(format!("{}: expect Identifier. but got {:?}", self.line_no, self.kind)),
        }
    }

    pub fn expect_symbol(&self, kind: SymbolKind) -> Result<(), String> {
        if self.kind == TokenKind::Symbol(kind) {
            Ok(())
        } else {
            Err(format!("{}: expect Symbol({:?}). but got {:?}", self.line_no, kind, self.kind))
        }
    }
}

#[derive(Clone, Debug, PartialEq)]
pub struct Tokens {
    pub tokens: Vec<Token>,
    cur: usize,
    len: usize,
}

impl Tokens {
    pub fn new(tokens: Vec<Token>) -> Self {
        let len = tokens.len();
        Tokens { tokens, cur: 0, len }
    }

    pub fn consume(&mut self) -> Option<&Token> {
        if self.cur < self.len {
            let token = &self.tokens[self.cur];
            self.cur += 1;
            Some(token)
        } else {
            None
        }
    }

    pub fn next(&self) -> Option<Token> {
        if self.cur < self.len {
            Some(self.tokens[self.cur].clone())
        } else {
            None
        }
    }
}


#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn get_kind_Keyword() {
        let token = Token { kind: TokenKind::Keyword(KeywordKind::Null), line_no: 0 };
        assert_eq!(token.kind(), TokenKind::Keyword(KeywordKind::Null));
    }

    #[test]
    fn get_kind_Symbol() {
        let token = Token { kind: TokenKind::Symbol(SymbolKind::Not), line_no: 0 };
        assert_eq!(token.kind(), TokenKind::Symbol(SymbolKind::Not));
    }

    #[test]
    fn get_kind_Identifier() {
        let token = Token { kind: TokenKind::Identifier("test".to_string()), line_no: 0 };
        assert_eq!(token.kind(), TokenKind::Identifier("test".to_string()));
    }

    #[test]
    fn get_kind_IntConst() {
        let token = Token { kind: TokenKind::IntConst(42), line_no: 0 };
        assert_eq!(token.kind(), TokenKind::IntConst(42));
    }

    #[test]
    fn get_kind_StringConst() {
        let token = Token { kind: TokenKind::StringConst("test".to_string()), line_no: 0 };
        assert_eq!(token.kind(), TokenKind::StringConst("test".to_string()));
    }

    #[test]
    fn get_line_no() {
        let token = Token { kind: TokenKind::Keyword(KeywordKind::Class), line_no: 42 };
        assert_eq!(token.line_no(), 42);
    }
}

