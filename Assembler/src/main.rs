#![allow(non_snake_case)]

use std::env;
use std::fs::File;
use std::io::Write;

mod parser;
use parser::Parser;
mod code;
mod symbol;

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 2 {
        eprintln!("invalid argument");
        std::process::exit(1);
    }

    let filename = asm2hack(&args[1]);
    let mut output = File::create(filename).expect("error file create");
    let mut tokens = Parser::new(&args[1]);
    let mut symbol_table = tokens.parse_symbol();
    let binaries = tokens.parse_all(&mut symbol_table);

    for binary in binaries.iter() {
        output.write_all(binary.as_bytes()).unwrap();
    }
    let _ = output.flush();
}

fn asm2hack(path: &str) -> String {
    let path: Vec<&str> = path.split('/').collect();
    let file_stem: Vec<&str> = path[path.len()-1].split('.').collect();
    format!("{}.hack", file_stem[0])
}

