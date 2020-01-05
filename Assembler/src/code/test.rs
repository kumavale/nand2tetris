use crate::parser::parse;

#[test]
fn test_a_instruction() {
    let tokens = vec![ "@0".to_string(), "@42".to_string(), "@12345".to_string()];
    let expect = vec!["0000000000000000", "0000000000101010", "0011000000111001"];
    assert_eq!(parse::parse(&tokens), expect);
}

#[test]
fn test_c_instruction() {
    let tokens = vec![ "D=A".to_string(), "0;JMP".to_string(), "M=D".to_string()];
    let expect = vec!["1110110000010000", "1110101010000111", "1110001100001000"];
    assert_eq!(parse::parse(&tokens), expect);
}

