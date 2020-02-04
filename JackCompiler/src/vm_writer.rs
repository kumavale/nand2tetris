
pub enum Segment {
    Const,
    Arg,
    Local,
    Static,
    This,
    That,
    Pointer,
    Temp,
}

pub enum Command {
    Add,
    Sub,
    Neg,
    Eq,
    Gt,
    Lt,
    And,
    Or,
    Not,
}

/// Write a VM push command.
pub fn write_push(segment: Segment, index: usize) -> String {
    String::new()
}

/// Write a VM pop command.
pub fn write_pop(segment: Segment, index: usize) -> String {
    String::new()
}

/// Write a VM arithmetic-logical command.
pub fn write_arithmetic(command: Command) -> String {
    String::new()
}

/// Write a VM label command.
pub fn write_label(label: &str) -> String {
    String::new()
}

/// Write a VM goto command.
pub fn write_goto(label: &str) -> String {
    String::new()
}

/// Write a VM if-goto command.
pub fn write_if(label: &str) -> String {
    String::new()
}

/// Write a VM call command.
pub fn write_call(name: &str, nArgs: usize) -> String {
    format!("call {} {}\n", name, nArgs)
}

/// Write a VM function command.
pub fn write_function(name: &str, nLocals: usize) -> String {
    format!("function {} {}\n", name, nLocals)
}

/// Write a VM return command.
pub fn write_return() -> String {
    "return\n".to_string()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn function() {
        assert_eq!(write_function("Main.main", 0), String::from("function Main.main 0\n"));
    }

    #[test]
    fn call() {
        assert_eq!(write_call("Output.printInt", 2), String::from("call Output.printInt 2\n"));
    }

    #[test]
    fn r#return() {
        assert_eq!(write_return(), String::from("return\n"));
    }
}

