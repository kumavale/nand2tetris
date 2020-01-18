#![allow(non_snake_case)]

mod token;
mod lexer;
mod compiler;

fn main() {
    let input = "class Main {\nfunction void main() {\nreturn;\n}\n}";
    let tokens = lexer::tokenize(&input);
    let xml = compiler::compile(&tokens);

    println!("{:?}", xml);
}

