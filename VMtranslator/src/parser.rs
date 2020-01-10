use crate::code_writer::*;

#[derive(Debug)]
#[allow(non_camel_case_types)]
pub enum CommandType<'a> {
    C_ARITHMETIC(&'a str),
    C_PUSH(&'a str, u32),
    C_POP(&'a str, u32),
    C_LABEL,
    C_GOTO,
    C_IF,
    C_FUNCTION,
    C_RETURN,
    C_CALL,
}

#[derive(Debug)]
pub struct File<'a> {
    file_stem: String,
    tokens: Vec<CommandType<'a>>,
}

#[derive(Debug)]
pub struct Parser<'a> {
    filename: String,
    files: Vec<File<'a>>,
}

impl<'a> Parser<'a> {

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
            let file_stem = get_stem(&path);
            let tokens = tokenize(path);
            let file = File { file_stem, tokens };
            files.push(file);
        }

        Parser { filename, files }
    }

    pub fn parse(&self) -> Vec<String> {
        let mut asm: Vec<String> = Vec::new();

        for file in self.files.iter() {
            let mut tokens = file.tokens.iter();
            while let Some(token) = tokens.next() {
                match token {
                    CommandType::C_ARITHMETIC(com) => (),
                    CommandType::C_POP(com, num) => (),
                    CommandType::C_PUSH(com, num) => {
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

fn tokenize(path: String) -> Vec<CommandType<'static>> {
    use std::fs::File;
    use std::io::{BufRead, BufReader};

    let mut reader = BufReader::new(File::open(&path)
        .expect("Failed file open"));

    let mut tokens = Vec::new();
    let mut buf = String::new();
    // ファイル全読み込み
    // 改行でsplit
    while reader.read_line(&mut buf).unwrap() > 0 {
        let mut commands = buf.split_whitespace();
        while let Some(command) = commands.next() {
            if command.starts_with("//") {  // ignore after "//"
                break;
            }

            let token = match command {
                "add"      => CommandType::C_ARITHMETIC("add"),
                "sub"      => CommandType::C_ARITHMETIC("sub"),
                "neg"      => CommandType::C_ARITHMETIC("neg"),
                "eq"       => CommandType::C_ARITHMETIC("eq"),
                "gt"       => CommandType::C_ARITHMETIC("gt"),
                "lt"       => CommandType::C_ARITHMETIC("lt"),
                "and"      => CommandType::C_ARITHMETIC("and"),
                "or"       => CommandType::C_ARITHMETIC("or"),
                "not"      => CommandType::C_ARITHMETIC("not"),
                "pop"      => {
                    let segment = match commands.next().expect("expect segment") {
                        "local"    => "local",
                        "argument" => "argument",
                        "this"     => "this",
                        "that"     => "that",
                        "constant" => "constant",
                        "static"   => "static",
                        "pointer"  => "pointer",
                        "temp"     => "temp",
                        _ => panic!("invalid segment"),
                    };
                    CommandType::C_POP(&segment, commands.next().unwrap().parse::<u32>().unwrap())
                },
                "push"     => {
                    let segment = match commands.next().expect("expect segment") {
                        "local"    => "local",
                        "argument" => "argument",
                        "this"     => "this",
                        "that"     => "that",
                        "constant" => "constant",
                        "static"   => "static",
                        "pointer"  => "pointer",
                        "temp"     => "temp",
                        _ => panic!("invalid segment"),
                    };
                    CommandType::C_PUSH(&segment, commands.next().unwrap().parse::<u32>().unwrap())
                },
                "label"    => CommandType::C_LABEL,
                "goto"     => CommandType::C_GOTO,
                "if-goto"  => CommandType::C_IF,
                "function" => CommandType::C_FUNCTION,
                "call"     => CommandType::C_CALL,
                "return"   => CommandType::C_RETURN,
                _ => panic!(format!("invalid type: {}", command)),
            };
            tokens.push(token);
        }
        buf.clear();
    }

    tokens
}

#[cfg(test)]
mod tests {
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

