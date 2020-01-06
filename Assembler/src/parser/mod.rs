mod test;
pub mod parse;
use crate::parser::parse::*;
use crate::symbol::SymbolTable;

#[derive(Debug)]
pub struct Parser {
    tokens: Vec<String>,
}

impl Parser {
    pub fn new(args: &str) -> Self {
        Parser { tokens: tokenize(&args) }
    }

    pub fn parse_all(&self, mut table: &mut SymbolTable) -> Vec<String> {
        parse(&self.tokens, &mut table)
    }

    pub fn parse_symbol(&mut self) -> SymbolTable {
        let mut table = SymbolTable::new();
        let mut address = 0;
        for token in self.tokens.iter() {
            match commandType(&token) {
                CommandType::A_COMMAND |
                CommandType::C_COMMAND =>
                    address += 1,
                CommandType::L_COMMAND =>
                    table.addEntry(&symbol(&token), address),
            }
        }
        table
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

