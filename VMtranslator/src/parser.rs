use crate::code_writer::*;

#[derive(Debug, PartialEq)]
#[allow(non_camel_case_types)]
pub enum CommandType {
    C_ARITHMETIC(String),
    C_PUSH(String, u32),
    C_POP(String, u32),
    C_LABEL(String),
    C_GOTO(String),
    C_IF(String),
    C_FUNCTION(String, u32),
    C_RETURN,
    C_CALL(String, u32),
}

#[derive(Debug)]
pub struct File {
    file_stem: String,
    tokens: Vec<CommandType>,
}

#[derive(Debug)]
pub struct Parser {
    path: String,
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
            panic!("Usage: {} [Xxx.vm | Directory]", args[0]);
        };

        let path = get_path(&input);
        let filename = get_stem(&input);
        let mut files: Vec<File> = Vec::new();
        for path in arg2paths(&input).into_iter() {
            let file_stem = get_stem(&path);
            let tokens = tokenize(path);
            let file = File { file_stem, tokens };
            files.push(file);
        }

        Parser { path, filename, files }
    }

    pub fn parse(&self) -> Vec<String> {
        let mut asm: Vec<String> = if 1 < self.files.len() {
            vec![write_bootstrap()]
        } else {
            Vec::new()
        };

        for file in self.files.iter() {
            for (line, token) in file.tokens.iter().enumerate() {
                let result = match token {
                    CommandType::C_ARITHMETIC(command) => write_arithmetic(command, line),
                    CommandType::C_POP(segment, index) => write_pop(&segment, *index, line, &file.file_stem),
                    CommandType::C_PUSH(segment, index) => write_push(&segment, *index, &file.file_stem),
                    CommandType::C_LABEL(name) => write_label(name),
                    CommandType::C_GOTO(label) => write_goto(label),
                    CommandType::C_IF(label) => write_ifgoto(label),
                    CommandType::C_FUNCTION(name, locals) => write_function(name, *locals),
                    CommandType::C_RETURN => write_return(),
                    CommandType::C_CALL(name, args) => write_call(name, *args, line),
                };
                asm.push(result);
            }
        }

        asm
    }

    pub fn path(&self) -> &str {
        &self.path
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

fn get_path(path: &str) -> String {
    let path = if path.ends_with('/') {
        path[..path.len()-1].to_string()  // erase '/' of last
    } else {
        path.to_string()
    };
    let mut path: Vec<&str> = path.split('/').collect();
    if path.last().unwrap().ends_with(".vm") {
        let filename = path.pop().unwrap();
        if path.is_empty() {
            let filename: Vec<&str> = filename.split('.').collect();
            return filename[0].to_string()
        }
    }
    path.join("/")
}

fn tokenize(path: String) -> Vec<CommandType> {
    use std::fs::read_to_string;

    let file_as_str = match read_to_string(&path) {
        Ok(content) => content,
        Err(message) => panic!("File at path '{}‘ could not be read: {}", path, message),
    };

    tokenize_line(&path, &file_as_str)
}

fn tokenize_line(path: &str, file_as_str: &str) -> Vec<CommandType> {
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
                    let segment = commands.next()
                        .unwrap_or_else(|| panic!("{}:{}: expect segment", path, i+1)).to_string();
                    CommandType::C_POP(segment, commands.next()
                        .unwrap_or_else(|| panic!("{}:{}: expect u32", path, i+1)).parse::<u32>()
                        .unwrap_or_else(|_| panic!("{}:{}: expect u32", path, i+1)))
                },
                "push"     => {
                    let segment = commands.next()
                        .unwrap_or_else(|| panic!("{}:{}: expect segment", path, i+1)).to_string();
                    CommandType::C_PUSH(segment, commands.next()
                        .unwrap_or_else(|| panic!("{}:{}: expect u32", path, i+1)).parse::<u32>()
                        .unwrap_or_else(|_| panic!("{}:{}: expect u32", path, i+1)))
                },
                "label"    => CommandType::C_LABEL(commands.next()
                    .unwrap_or_else(|| panic!("{}:{}: expect label", path, i+1)).to_string()),
                "goto"     => CommandType::C_GOTO(commands.next()
                    .unwrap_or_else(|| panic!("{}:{}: expect label", path, i+1)).to_string()),
                "if-goto"  => CommandType::C_IF(commands.next()
                    .unwrap_or_else(|| panic!("{}:{}: expect label", path, i+1)).to_string()),
                "function" => {
                    let func_name = commands.next()
                        .unwrap_or_else(|| panic!("{}:{}: expect function name", path, i+1)).to_string();
                    CommandType::C_FUNCTION(func_name, commands.next()
                        .unwrap_or_else(|| panic!("{}:{}: expect u32", path, i+1)).parse::<u32>()
                        .unwrap_or_else(|_| panic!("{}:{}: expect u32", path, i+1)))
                },
                "call"     => {
                    let func_name = commands.next()
                        .unwrap_or_else(|| panic!("{}:{}: expect function name", path, i+1)).to_string();
                    CommandType::C_CALL(func_name, commands.next()
                        .unwrap_or_else(|| panic!("{}:{}: expect u32", path, i+1)).parse::<u32>()
                        .unwrap_or_else(|_| panic!("{}:{}: expect u32", path, i+1)))
                },
                "return"   => CommandType::C_RETURN,
                _ => panic!("{}:{}: invalid type: {}", path, i+1, command),
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
        let paths  = vec!["/a/b/c", "/a/b/c/", "./a", "../a", "a", "./a/b.vm", "a.vm"];
        let expect = vec!["c", "c", "a", "a", "a", "b", "a"];
        let mut actual = vec![];
        for path in paths.iter() {
            actual.push(get_stem(&path));
        }
        assert_eq!(expect, actual);
    }
    #[test]
    fn test_get_path() {
        let paths  = vec!["/a/b/c", "/a/b/c/", "./a", "../a", "a", "./a/b.vm", "a.vm"];
        let expect = vec!["/a/b/c", "/a/b/c", "./a", "../a", "a", "./a", "a"];
        let mut actual = vec![];
        for path in paths.iter() {
            actual.push(get_path(&path));
        }
        assert_eq!(expect, actual);
    }

    // Test tokenize_line()
    #[test]
    fn returns_push_command() {
        assert_eq!(tokenize_line("", "push local 2"), vec![CommandType::C_PUSH("local".to_string(), 2)]);
    }
    #[test]
    fn returns_pop_command() {
        assert_eq!(tokenize_line("", "pop static 3"), vec![CommandType::C_POP("static".to_string(), 3)]);
    }
    #[test]
    fn returns_arithmetic_command() {
        assert_eq!(tokenize_line("", "add"), vec![CommandType::C_ARITHMETIC("add".to_string())]);
    }
    #[test]
    fn returns_label_command() {
        assert_eq!(tokenize_line("", "label MY_COOL_LABEL"), vec![CommandType::C_LABEL("MY_COOL_LABEL".to_string())]);
    }
    #[test]
    fn returns_if_goto_command() {
        assert_eq!(tokenize_line("", "if-goto MY_COOL_LABEL"), vec![CommandType::C_IF("MY_COOL_LABEL".to_string())]);
    }
    #[test]
    fn returns_goto_command() {
        assert_eq!(tokenize_line("", "goto MY_COOL_LABEL"), vec![CommandType::C_GOTO("MY_COOL_LABEL".to_string())]);
    }
    #[test]
    fn returns_function_command() {
        assert_eq!(tokenize_line("", "function crazy_calc.j 2"), vec![CommandType::C_FUNCTION("crazy_calc.j".to_string(), 2)]);
    }
    #[test]
    fn returns_return_command() {
        assert_eq!(tokenize_line("", "return"), vec![CommandType::C_RETURN]);
    }
    #[test]
    fn returns_call_command() {
        assert_eq!(tokenize_line("", "call myFunc.main 4"), vec![CommandType::C_CALL("myFunc.main".to_string(), 4)]);
    }
}

