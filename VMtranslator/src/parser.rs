use crate::code_writer::*;

#[derive(Debug)]
#[allow(non_camel_case_types)]
pub enum CommandType {
    C_ARITHMETIC(String),
    C_PUSH(String, u32),
    C_POP(String, u32),
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
    tokens: Vec<CommandType>,
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
            for (line, token) in file.tokens.iter().enumerate() {
                let result = match token {
                    CommandType::C_ARITHMETIC(command) => write_arithmetic(command, line),
                    CommandType::C_POP(segment, index) => write_pop(&segment, *index, line, &file.file_stem),
                    CommandType::C_PUSH(segment, index) => write_push(&segment, *index, &file.file_stem),
                    _ => panic!("TODO"),
                };
                asm.push(result);
            }
        }

        asm
    }

    pub fn filename(&self) -> &str {
        &self.filename
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

fn tokenize(path: String) -> Vec<CommandType> {
    use std::fs::read_to_string;

    let file_as_str = match read_to_string(&path) {
        Ok(content) => content,
        Err(message) => panic!("File at path '{}‘ could not be read: {}", path, message),
    };

    let mut tokens = Vec::new();
    for (i, line) in file_as_str.split('\n').enumerate() {
        let mut commands = line.split_whitespace();
        while let Some(command) = commands.next() {
            if command.starts_with("//") {  // ignore after "//"
                break;
            }

            let token = match command {
                "add" | "sub" | "neg" | "eq"  | "gt"  | "lt"  | "and" | "or"  | "not"
                    => CommandType::C_ARITHMETIC(command.to_string()),
                "pop"      => {
                    let segment = commands.next().expect("expect segment").to_string();
                    CommandType::C_POP(segment, commands.next().unwrap().parse::<u32>()
                        .expect(&format!("{}:{}: expect u32", path, i+1)))
                },
                "push"     => {
                    let segment = commands.next().expect("expect segment").to_string();
                    CommandType::C_PUSH(segment, commands.next().unwrap().parse::<u32>()
                        .expect(&format!("{}:{}: expect u32", path, i+1)))
                },
                "label"    => CommandType::C_LABEL,
                "goto"     => CommandType::C_GOTO,
                "if-goto"  => CommandType::C_IF,
                "function" => CommandType::C_FUNCTION,
                "call"     => CommandType::C_CALL,
                "return"   => CommandType::C_RETURN,
                _ => panic!(format!("{}:{}: invalid type: {}", path, i+1, command)),
            };
            tokens.push(token);
        }
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

