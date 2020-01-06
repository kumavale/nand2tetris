mod test;
use crate::parser::{Comp, Dest, Jump};

/// Returns the binary code of the comp mnemonic. (7bits)
pub fn comp(op: Comp) -> &'static str {
    match op {
        Comp::Zero    => "0101010",
        Comp::One     => "0111111",
        Comp::Minus1  => "0111010",
        Comp::D       => "0001100",
        Comp::A       => "0110000",
        Comp::NotD    => "0001101",
        Comp::NotA    => "0110001",
        Comp::MinusD  => "0001111",
        Comp::MinusA  => "0110011",
        Comp::Dplus1  => "0011111",
        Comp::Aplus1  => "0110111",
        Comp::Dminus1 => "0001110",
        Comp::Aminus1 => "0110010",
        Comp::DplusA  => "0000010",
        Comp::DminusA => "0010011",
        Comp::AminusD => "0000111",
        Comp::DandA   => "0000000",
        Comp::DorA    => "0010101",
        Comp::M       => "1110000",
        Comp::NotM    => "1110001",
        Comp::MinusM  => "1110011",
        Comp::Mplus1  => "1110111",
        Comp::Mminus1 => "1110010",
        Comp::DplusM  => "1000010",
        Comp::DminusM => "1010011",
        Comp::MminusD => "1000111",
        Comp::DandM   => "1000000",
        Comp::DorM    => "1010101",
    }
}

/// Returns the binary dest of the comp mnemonic. (3bits)
pub fn dest(op: Dest) -> &'static str {
    match op {
        Dest::Null => "000",
        Dest::M    => "001",
        Dest::D    => "010",
        Dest::MD   => "011",
        Dest::A    => "100",
        Dest::AM   => "101",
        Dest::AD   => "110",
        Dest::AMD  => "111",
    }
}

/// Returns the binary jump of the comp mnemonic. (3bits)
pub fn jump(op: Jump) -> &'static str {
    match op {
        Jump::Null => "000",
        Jump::JGT  => "001",
        Jump::JEQ  => "010",
        Jump::JGE  => "011",
        Jump::JLT  => "100",
        Jump::JNE  => "101",
        Jump::JLE  => "110",
        Jump::JMP  => "111",
    }
}

