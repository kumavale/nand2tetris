
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
    String::new()
}

/// Write a VM function command.
pub fn write_function(name: &str, nLocals: usize) -> String {
    String::new()
}

/// Write a VM return command.
pub fn write_return() -> String {
    String::new()
}

