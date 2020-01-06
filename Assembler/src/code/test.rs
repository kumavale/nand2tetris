
#[cfg(test)]
mod test {
    use crate::parser::parse;
    use crate::symbol::SymbolTable;

    #[test]
    fn test_a_instruction_imm() {
        let mut table = SymbolTable::new();
        let tokens = vec![ "@0".to_string(), "@42".to_string(), "@12345".to_string()];
        let expect = vec!["0000000000000000", "0000000000101010", "0011000000111001"];
        assert_eq!(parse::parse(&tokens, &mut table), expect);
    }

    #[test]
    fn test_a_instruction_sym() {
        let mut table = SymbolTable::new();
        let tokens = vec![ "@SP".to_string(), "@R15".to_string(), "@KBD".to_string()];
        let expect = vec!["0000000000000000", "0000000000001111", "0110000000000000"];
        assert_eq!(parse::parse(&tokens, &mut table), expect);
    }

    #[test]
    fn test_c_instruction() {
        let mut table = SymbolTable::new();
        let tokens = vec![ "D=A".to_string(), "0;JMP".to_string(), "M=D".to_string()];
        let expect = vec!["1110110000010000", "1110101010000111", "1110001100001000"];
        assert_eq!(parse::parse(&tokens, &mut table), expect);
    }
}

