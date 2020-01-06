
#[cfg(test)]
mod test {
    use crate::parser::*;

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
}

