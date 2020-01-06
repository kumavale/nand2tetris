use crate::code;
use crate::parser::{CommandType, Comp, Dest, Jump};
use crate::symbol::SymbolTable;

pub fn parse(tokens: &Vec<String>, table: &mut SymbolTable) -> Vec<String> {
    let mut binaries: Vec<String> = Vec::new();
    for token in tokens.iter() {
        match commandType(&token) {
            CommandType::A_COMMAND => {
                let mut binary = String::from("0");
                let value;
                if let Ok(num) = token[1..].parse::<u16>() {
                    value = num;
                } else {
                    let symbol = symbol(&token);
                    if let Some(address) = table.getAddress(&symbol) {
                        value = *address;
                    } else {
                        value = table.current();
                        table.addEntry(&symbol, value);
                        table.inc_current();
                    }
                }
                for i in (0..15).rev() {
                    binary += if value >> i & 1 == 1 { "1" } else { "0" };
                }
                binary += "\n";
                binaries.push(binary);
            },
            CommandType::C_COMMAND => {
                let mut binary = String::from("111");
                binary += code::comp(comp(&token));
                binary += code::dest(dest(&token));
                binary += code::jump(jump(&token));
                binary += "\n";
                binaries.push(binary);
            },
            CommandType::L_COMMAND => (), // Do nothing
        }
    }
    binaries
}

pub fn tokenize(args: &str) -> Vec<String> {
    use std::fs::File;
    use std::io::{BufRead, BufReader};

    let mut reader = BufReader::new(File::open(&args)
        .expect("Failed file open"));

    let mut tokens: Vec<String> = Vec::new();
    let mut buf = String::new();
    while reader.read_line(&mut buf).unwrap() > 0 {
        for token in buf.split_whitespace() {
            if token.starts_with("//") {  // ignore after "//"
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

