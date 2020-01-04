mod test;
mod parse;
use crate::parser::parse::*;

#[derive(Debug)]
pub struct Parser {
    tokens: Vec<String>,
}

impl Parser {
    pub fn new(args: &str) -> Self {
        Parser { tokens: tokenize(&args) }
    }

    pub fn parse_all(&self) -> Vec<String> {
        let mut binaries: Vec<String> = Vec::new();

        for token in self.tokens.iter() {
            match commandType(&token) {
                CommandType::A_COMMAND => {
                    let mut binary = String::from("0");
                    //
                    binaries.push(binary);
                },
                CommandType::C_COMMAND => {
                    let mut binary = String::from("111");
                    // Code::comp(comp(&token))
                    // Code::dest(dest(&token))
                    // Code::jump(jump(&token))
                    binaries.push(binary);
                },
                CommandType::L_COMMAND => (),
            }
        }

        binaries
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

