#![allow(non_snake_case)]

mod token;
mod lexer;
mod compiler;
mod symbol;

use std::env;
use std::io::Write;
use std::fs::{File, read_to_string};

fn main() {
    let args: Vec<String> = env::args().collect();
    let path = if args.len() == 2 {
        &args[1]
    } else {
        eprintln!("Usage: {} [Xxx.jack | Directory]", args[0]);
        std::process::exit(1);
    };

    for path in arg2paths(&path).iter() {
        let output_path = format!("{}/{}.vm", get_path(&path), get_stem(&path));
        let input = match read_to_string(&path) {
            Ok(content) => content,
            Err(message) => panic!("File at path '{}‘ could not be read: {}", path, message),
        };

        let mut tokens = lexer::tokenize(&input);
        let vm = compiler::compile(&mut tokens);

        let mut output = match File::create(&output_path) {
            Ok(file) => file,
            Err(e) => panic!("Could not create file because: {}", e),
        };
        match output.write_all(vm.as_bytes()) {
            Ok(_) => println!("'{:?}' has been created successfully.", output),
            Err(e) => panic!("Coulnd not write to file because: {}", e),
        }
    }
}

fn read_dir_rec(files: &mut Vec<String>, maybe_dir: &str) {
    if let Ok(paths) = std::fs::read_dir(&maybe_dir) {
        for path in paths {
            let file = path.unwrap().path().display().to_string();
            if file.ends_with(".jack") {
                files.push(file);
            } else {
                read_dir_rec(files, &file);
            }
        }
    }
}

fn arg2paths(args: &str) -> Vec<String> {
    if std::fs::read_dir(&args).is_err() {
        vec![args.to_string()]
    } else {
        let mut files: Vec<String> = Vec::new();
        read_dir_rec(&mut files, &args);
        files
    }
}

fn get_stem(path: &str) -> String {
    let mut path: Vec<&str> = path.split('/').collect();
    if path.last().unwrap().is_empty() {
        path.pop();
    }
    let file_stem: Vec<&str> = path[path.len()-1].split('.').collect();
    file_stem[0].to_string()
}

fn get_path(path: &str) -> String {
    let path = if path.ends_with('/') {
        path[..path.len()-1].to_string()  // erase '/' of last
    } else {
        path.to_string()
    };
    let mut path: Vec<&str> = path.split('/').collect();
    if path.last().unwrap().ends_with(".jack") {
        let filename = path.pop().unwrap();
        if path.is_empty() {
            let filename: Vec<&str> = filename.split('.').collect();
            return filename[0].to_string()
        }
    }
    path.join("/")
}

