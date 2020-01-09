
mod parser;
use parser::*;
mod code_writer;

fn main() {

    let p = Parser::new();
    let asm = p.parse();

    // Output ("{}.asm", p.filename)
}
