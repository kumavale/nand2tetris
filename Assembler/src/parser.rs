
pub struct Parser;

impl Parser {
    pub fn new(args: &str) -> Vec<String> {
        tokenize(&args)
    }
}

#[allow(non_camel_case_types)]
#[derive(Debug, PartialEq)]
pub enum CommandType {
    A_COMMAND,
    C_COMMAND,
    L_COMMAND,
}

#[derive(Debug, PartialEq)]
pub enum Comp {
    // when a=0
    Zero,
    One,
    Minus1,
    D,
    A,
    NotD,
    NotA,
    MinusD,
    MinusA,
    Dplus1,
    Aplus1,
    Dminus1,
    Aminus1,
    DplusA,
    DminusA,
    AminusD,
    DandA,
    DorA,
    // when a=1
    M,
    NotM,
    MinusM,
    Mplus1,
    Mminus1,
    DplusM,
    DminusM,
    MminusD,
    DandM,
    DorM,
}

#[derive(Debug, PartialEq)]
pub enum Dest {
    Null,  // The value is not stored anywhere
    M,     // Memory[A] (memory register addressed by A)
    D,     // D register
    MD,    // Memory[A] and D register
    A,     // A register
    AM,    // A register and Memory[A]
    AD,    // A register and D register
    AMD,   // A register, Memory[A], and D register
}

#[derive(Debug, PartialEq)]
pub enum Jump {
    Null,  // No jump
    JGT,   // If out > 0 jump
    JEQ,   // If out = 0 jump
    JGE,   // If out >= 0 jump
    JLT,   // If out < 0 jump
    JNE,   // If out != 0 jump
    JLE,   // If out <= 0 jump
    JMP,   // Jump
}

fn tokenize(args: &str) -> Vec<String> {
    use std::fs::File;
    use std::io::{BufRead, BufReader};

    let mut reader = BufReader::new(File::open(&args)
        .expect("Failed file open"));

    let mut tokens: Vec<String> = Vec::new();
    let mut buf = String::new();
    while reader.read_line(&mut buf).unwrap() > 0 {
        for token in buf.split_whitespace() {
            // ignore after "//"
            if token.starts_with("//") {
                break;
            }

            tokens.push(token.to_string());
        }
        buf.clear();
    }

    tokens
}

#[allow(non_snake_case)]
pub fn commandType(token: &str) -> CommandType {
    match token.chars().nth(0).expect("not found token") {
        '@' => CommandType::A_COMMAND,
        '(' => CommandType::L_COMMAND,
         _  => CommandType::C_COMMAND,
    }
}

/// Returns the symbol or decimal
/// Xxx of the current command
/// @Xxx or (Xxx). Should be called
/// only when commandType() is
/// A_COMMAND or L_COMMAND.
pub fn symbol(command: &str) -> String {
    if command.starts_with('@') {
        command[1..].to_string()
    } else {
        assert!(command.starts_with('('));
        assert!(command.ends_with(')'));
        command[1..command.len()-1].to_string()
    }
}

/// Returns the dest mnemonic in
/// the current C-command (8 possibilities). Should be called only
/// when commandType() is C_COMMAND.
pub fn dest(command: &str) -> Dest {
    let operands: Vec<&str> = command.split('=').collect();
    if operands.len() == 1 {
        Dest::Null
    } else {
        match operands[0] {
            "M"   => Dest::M,
            "D"   => Dest::D,
            "MD"  => Dest::MD,
            "A"   => Dest::A,
            "AM"  => Dest::AM,
            "AD"  => Dest::AD,
            "AMD" => Dest::AMD,
            _ => panic!("invalid dest: {}", operands[0]),
        }
    }
}

/// Returns the comp mnemonic in
/// the current C-command (28 possibilities). Should be called only
/// when commandType() is
/// C_COMMAND.
pub fn comp(command: &str) -> Comp {
    let mut operands: Vec<&str> = command.split(';').collect();
    if operands.len() == 1 {
        operands = command.split('=').collect();
        operands.remove(0);
    }

    match operands[0] {
        "0"   => Comp::Zero,
        "1"   => Comp::One,
        "-1"  => Comp::Minus1,
        "D"   => Comp::D,
        "A"   => Comp::A,
        "!D"  => Comp::NotD,
        "!A"  => Comp::NotA,
        "-D"  => Comp::MinusD,
        "-A"  => Comp::MinusA,
        "D+1" => Comp::Dplus1,
        "A+1" => Comp::Aplus1,
        "D-1" => Comp::Dminus1,
        "A-1" => Comp::Aminus1,
        "D+A" => Comp::DplusA,
        "D-A" => Comp::DminusA,
        "A-D" => Comp::AminusD,
        "D&A" => Comp::DandA,
        "D|A" => Comp::DorA,
        "M"   => Comp::M,
        "!M"  => Comp::NotM,
        "-M"  => Comp::MinusM,
        "M+1" => Comp::Mplus1,
        "M-1" => Comp::Mminus1,
        "D+M" => Comp::DplusM,
        "D-M" => Comp::DminusM,
        "M-D" => Comp::MminusD,
        "D&M" => Comp::DandM,
        "D|M" => Comp::DorM,
        _ => panic!("invalid comp: {}", operands[0]),
    }
}

/// Returns the jump mnemonic in
/// the current C-command (8 possibilities). Should be called only
/// when commandType() is
/// C_COMMAND.
pub fn jump(command: &str) -> Jump {
    let operands: Vec<&str> = command.split(';').collect();
    if operands.len() == 1 {
        Jump::Null
    } else {
        match operands[1] {
            "JGT" => Jump::JGT,
            "JEQ" => Jump::JEQ,
            "JGE" => Jump::JGE,
            "JLT" => Jump::JLT,
            "JNE" => Jump::JNE,
            "JLE" => Jump::JLE,
            "JMP" => Jump::JMP,
            _ => panic!("invalid jump: {}", operands[0]),
        }
    }
}

#[test]
#[allow(non_snake_case)]
fn test_commandType() {
    let commands = vec![
        ("@0",     CommandType::A_COMMAND),
        ("@sum",   CommandType::A_COMMAND),
        ("@42",    CommandType::A_COMMAND),
        ("D=M",    CommandType::C_COMMAND),
        ("D;JEQ",  CommandType::C_COMMAND),
        ("(LOOP)", CommandType::L_COMMAND),
        ("D=D-M",  CommandType::C_COMMAND),
    ];

    for command in commands.iter() {
        assert_eq!(commandType(command.0), command.1);
    }
}

#[test]
fn  test_symbol() {
    let commands = vec![
        ("@0",      "0"),
        ("@R0",     "R0"),
        ("@LABEL",  "LABEL"),
        ("(LABEL)", "LABEL"),
    ];

    for command in commands.iter() {
        assert_eq!(symbol(&command.0), command.1);
    }
}

#[test]
fn  test_dest() {
    let commands = vec![
        ("M=D",     Dest::M),
        ("D=M",     Dest::D),
        ("MD=D-M",  Dest::MD),
        ("A=0",     Dest::A),
        ("AM=0",    Dest::AM),
        ("AD=0",    Dest::AD),
        ("AMD=AMD", Dest::AMD),
        ("@1",      Dest::Null),
        ("(LABEL)", Dest::Null),
        ("D;JGT",   Dest::Null),
    ];

    for command in commands.iter() {
        assert_eq!(dest(&command.0), command.1);
    }
}

#[test]
fn  test_comp() {
    let commands = vec![
        ("M=0",     Comp::Zero),
        ("D=1",     Comp::One),
        ("MD=-1",   Comp::Minus1),
        ("M=D",     Comp::D),
        ("D=A",     Comp::A),
        ("A=!D",    Comp::NotD),
        ("A=!A",    Comp::NotA),
        ("M=-D",    Comp::MinusD),
        ("M=-A",    Comp::MinusA),
        ("M=D+1",   Comp::Dplus1),
        ("M=A+1",   Comp::Aplus1),
        ("M=D-1",   Comp::Dminus1),
        ("M=A-1",   Comp::Aminus1),
        ("M=D+A",   Comp::DplusA),
        ("M=D-A",   Comp::DminusA),
        ("M=A-D",   Comp::AminusD),
        ("M=D&A",   Comp::DandA),
        ("M=D|A",   Comp::DorA),
        ("M;L",     Comp::M),
        ("!M;L",    Comp::NotM),
        ("-M;L",    Comp::MinusM),
        ("M+1;L",   Comp::Mplus1),
        ("M-1;L",   Comp::Mminus1),
        ("D+M;L",   Comp::DplusM),
        ("D-M;L",   Comp::DminusM),
        ("M-D;L",   Comp::MminusD),
        ("D&M;L",   Comp::DandM),
        ("D|M;L",   Comp::DorM),
    ];

    for command in commands.iter() {
        assert_eq!(comp(&command.0), command.1);
    }
}

#[test]
fn  test_jump() {
    let commands = vec![
        ("0;JGT",   Jump::JGT),
        ("0;JEQ",   Jump::JEQ),
        ("0;JGE",   Jump::JGE),
        ("0;JLT",   Jump::JLT),
        ("0;JNE",   Jump::JNE),
        ("0;JLE",   Jump::JLE),
        ("0;JMP",   Jump::JMP),
        ("@1",      Jump::Null),
        ("(LABEL)", Jump::Null),
        ("D=0",     Jump::Null),
    ];

    for command in commands.iter() {
        assert_eq!(jump(&command.0), command.1);
    }
}

