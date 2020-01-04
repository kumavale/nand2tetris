use crate::parser::parse;

#[test]
fn test_c_instruction() {
    let tokens = vec![ "D=A".to_string(), "D=D+A".to_string(), "M=D".to_string()];
    let expect = vec!["1110110000010000", "1110000010010000", "1110001100001000"];
    assert_eq!(parse::parse(&tokens), expect);
}

