#![allow(non_snake_case)]

mod token;
mod lexer;
mod compiler;

use std::env;
use std::fs::read_to_string;

fn main() {
    let args: Vec<String> = env::args().collect();
    let path = if args.len() == 2 {
        &args[1]
    } else {
        eprintln!("Usage: {} [Xxx.jack | Directory]", args[0]);
        std::process::exit(1);
    };

    let input = match read_to_string(&path) {
        Ok(content) => content,
        Err(message) => panic!("File at path '{}‘ could not be read: {}", path, message),
    };

    let tokens = lexer::tokenize(&input);
    let xml = lexer::parse_tokens_XML(&tokens);
    println!("{}", xml);  // `cargo run Main.jack > Main.xml`

    //let xml = compiler::compile(&tokens);
    //println!("{:?}", xml);
}

