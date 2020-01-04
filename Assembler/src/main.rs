use std::env;

mod parser;
use parser::*;

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 2 {
        eprintln!("invalid argument");
        std::process::exit(1);
    }

    let tokens = Parser::new(&args[1]);
    for token in tokens.iter() {
        match commandType(&token) {
            CommandType::A_COMMAND => (),
            CommandType::C_COMMAND => (),
            CommandType::L_COMMAND => (),
        }
    }
}

