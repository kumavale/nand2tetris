use std::env;

mod parser;
use parser::*;
mod code;

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 2 {
        eprintln!("invalid argument");
        std::process::exit(1);
    }

    let mut tokens = Parser::new(&args[1]);
    let binaries = tokens.parse_all();

    println!("{:?}", binaries);
}

