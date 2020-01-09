use crate::code_writer::*;

#[derive(Debug)]
pub enum CommandType {
    C_ARITHMETIC,
    C_PUSH,
    C_POP,
    C_LABEL,
    C_GOTO,
    C_IF,
    C_FUNCTION,
    C_RETURN,
    C_CALL,
}

#[derive(Debug)]
pub struct File {
    file_stem: String,
    tokens: Vec<String>,
}

#[derive(Debug)]
pub struct Parser {
    filename: String,
    files: Vec<File>,
}

impl Parser {

    /// Opens the input file/stream and gets ready to parse it.
    pub fn new() -> Self {
        use std::env;

        let args: Vec<String> = env::args().collect();
        let input = if args.len() == 2 {
            &args[1]
        } else {
            panic!(format!("Usage: {} [Xxx.vm | Directory]", args[0]));
        };

        let filename = get_stem(&input);
        let mut files: Vec<File> = Vec::new();
        for path in arg2paths(&input).into_iter() {
            let tokens = tokenize(&path);
            let file = File { file_stem: get_stem(&path), tokens };
            files.push(file);
        }

        Parser { filename, files }
    }

    pub fn parse(&self) -> Vec<String> {
        let mut asm: Vec<String> = Vec::new();

        for file in self.files.iter() {
            let mut tokens = file.tokens.iter();
            while let Some(token) = tokens.next() {
                match command_type(&token) {
                    CommandType::C_ARITHMETIC => (),
                    CommandType::C_POP |
                    CommandType::C_PUSH => {
                        tokens.next();
                        tokens.next();
                    },
                    _ => panic!("TODO"),
                }
            }
        }

        asm
    }
}

/// Returns a constant representing the type of the current command.
/// C_ARITHMETIC is returned for all the arithmetic/logical commands.
fn command_type(command: &str) -> CommandType {
    match command {
        "add" | "sub" | "neg" | "eq" | "gt" | "lt" | "and" | "or" |
        "not"      => CommandType::C_ARITHMETIC,
        "pop"      => CommandType::C_POP,
        "push"     => CommandType::C_PUSH,
        "label"    => CommandType::C_LABEL,
        "goto"     => CommandType::C_GOTO,
        "if-goto"  => CommandType::C_IF,
        "function" => CommandType::C_FUNCTION,
        "call"     => CommandType::C_CALL,
        "return"   => CommandType::C_RETURN,
        _ => panic!(format!("command_type(): invalid type: {}", command)),
    }
}

fn arg2paths(args: &str) -> Vec<String> {
    let mut files: Vec<String> = Vec::new();

    if let Ok(paths) = std::fs::read_dir(&args) {
        for path in paths {
            let file = path.unwrap().path().display().to_string();
            if file.ends_with(".vm") {
                files.push(file);
            }
        }
    } else {
        files.push(args.to_string());
    }

    files
}

fn get_stem(path: &str) -> String {
    let mut path: Vec<&str> = path.split('/').collect();
    if path.last().unwrap().is_empty() {
        path.pop();
    }
    let file_stem: Vec<&str> = path[path.len()-1].split('.').collect();
    file_stem[0].to_string()
}

fn tokenize(path: &str) -> Vec<String> {
    use std::fs::File;
    use std::io::{BufRead, BufReader};

    let mut reader = BufReader::new(File::open(&path)
        .expect("Failed file open"));

    let mut tokens: Vec<String> = Vec::new();
    let mut buf = String::new();
    while reader.read_line(&mut buf).unwrap() > 0 {
        for token in buf.split_whitespace() {
            if token.starts_with("//") {  // ignore after "//"
                break;
            }

            tokens.push(token.to_string());
        }
        buf.clear();
    }

    tokens
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_get_stem() {
        let paths  = vec!["/a/b/c", "/a/b/c/", "./a", "../a", "a", "./a/b.vm"];
        let expect = vec!["c", "c", "a", "a", "a", "b"];
        let mut actual = vec![];
        for path in paths.iter() {
            actual.push(get_stem(&path));
        }
        assert_eq!(expect, actual);
    }
}

