use std::fs::File;
use std::io::Write;

mod parser;
use parser::*;
mod code_writer;

fn main() {

    let p = Parser::new();
    let asm = p.parse();

    println!("{:?}", asm);
    //let output_path = format!("{}.asm", p.filename());
    //let mut output = match File::create(&output_path) {
    //    Ok(file) => file,
    //    Err(m) => panic!("Could not create file because: {}", m),
    //};
    //match output.write_all(asm.join("\n").as_bytes()) {
    //    Ok(_) => println!("HackFile with path: '{:?}' has been created successfully.", output),
    //    Err(m) => panic!("Coulnd not write to file because: {}", m),
    //}
}
