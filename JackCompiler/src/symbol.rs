
#[derive(Clone, Debug, PartialEq)]
pub enum VarType {
    Int,
    Char,
    Boolean,
    ClassName(String),
    Void,
}

#[derive(Clone, Copy, Debug, PartialEq)]
pub enum Kind {
    Field,
    Static,
    Local,
    Argument,
}

#[derive(Clone, Debug, PartialEq)]
pub struct Table {
    pub name: String,
    pub vtype: VarType,
    pub kind: Kind,
    pub index: usize,
}

impl Table {
    pub fn new(name: &str, vtype: VarType, kind: Kind, index: usize) -> Self {
        Table { name: name.to_string(), vtype, kind, index, }
    }
}

#[derive(Clone, Debug, PartialEq)]
pub enum SubroutineKind {
    Function,
    Method,
    Constructor,
}

#[derive(Clone, Debug, PartialEq)]
pub struct SubroutineTable {
    pub name: String,
    pub kind: SubroutineKind,
}

#[derive(Clone, Debug, PartialEq)]
pub struct SymbolTable {
    pub tables: Vec<Vec<Table>>,

    pub field_counter:    usize,
    pub static_counter:   usize,
    pub local_counter:    usize,
    pub argument_counter: usize,

    pub class_name:       String,
    pub label_serial:     usize,

    pub subroutine_table: Vec<SubroutineTable>,
}

impl SymbolTable {
    pub fn new() -> Self {
        SymbolTable {
            tables: Vec::new(),
            field_counter:    0,
            static_counter:   0,
            local_counter:    0,
            argument_counter: 0,
            class_name:       String::new(),
            label_serial:     0,
            subroutine_table: Vec::new(),
        }
    }

    pub fn scope_in(&mut self) {
        self.tables.push(Vec::new());
    }

    pub fn scope_out(&mut self) {
        if let Some(tables) = self.tables.pop() {
            for table in tables.iter() {
                match table.kind {
                    Kind::Field    => self.field_counter    -= 1,
                    Kind::Static   => self.static_counter   -= 1,
                    Kind::Local    => self.local_counter    -= 1,
                    Kind::Argument => self.argument_counter -= 1,
                }
            }
        }
    }

    pub fn get_serial_and_inc(&mut self) -> usize {
        let serial = self.label_serial;
        self.label_serial += 1;
        serial
    }

    pub fn define_subroutine(&mut self, keyword: &str, name: &str) {
        let kind = match keyword {
            "function"    => SubroutineKind::Function,
            "method"      => SubroutineKind::Method,
            "constructor" => SubroutineKind::Constructor,
            _ => panic!("invalid SubroutineKind: {}", keyword)
        };
        self.subroutine_table.push(SubroutineTable { name: name.to_string(), kind });
    }

    pub fn is_method(&self, subroutineName: &str) -> bool {
        for table in self.subroutine_table.iter() {
            if subroutineName == table.name {
                return table.kind == SubroutineKind::Method;
            }
        }
        false
    }

    /// Defines a new identifier of the given name, type, and kind,
    /// and assigns it a running index.
    pub fn define(&mut self, name: &str, vtype: &str, kind: Kind) {
        if let Some(table) = self.tables.last_mut() {
            let vtype = match vtype {
                "int"     => VarType::Int,
                "char"    => VarType::Char,
                "boolean" => VarType::Boolean,
                "void"    => VarType::Void,
                _         => VarType::ClassName(vtype.to_string()),
            };
            match kind {
                Kind::Field => {
                    table.push(Table::new(name, vtype, kind, self.field_counter));
                    self.field_counter += 1;
                },
                Kind::Static => {
                    table.push(Table::new(name, vtype, kind, self.static_counter));
                    self.static_counter += 1;
                },
                Kind::Local => {
                    table.push(Table::new(name, vtype, kind, self.local_counter));
                    self.local_counter += 1;
                },
                Kind::Argument => {
                    table.push(Table::new(name, vtype, kind, self.argument_counter));
                    self.argument_counter += 1;
                },
            }
        } else {
            panic!("define() failed");
        }
    }

    pub fn expect_defined(&self, ident: &str, line_no: u32) {
        if self.kind_of(&ident).is_none() {
            panic!("{}: not found in this scope: {}", line_no, ident);
        }
    }

    /// Returns the number of variables of the given kind already defined in the current scope.
    pub fn var_count(&self, kind: Kind) -> usize {
        let mut count = 0;
        for table in self.tables.iter().rev() {
            for t in table.iter() {
                if t.kind == kind {
                    count += 1;
                }
            }
        }
        count
    }

    /// Returns the kind of the named identifier in the current scope.
    /// If the identifier is unknown in the current scope, returns None.
    pub fn kind_of(&self, name: &str) -> Option<&str> {
        for table in self.tables.iter().rev() {
            for t in table.iter() {
                if t.name == name {
                    return match t.kind {
                        Kind::Field =>    Some("this"),
                        Kind::Static =>   Some("static"),
                        Kind::Local =>    Some("local"),
                        Kind::Argument => Some("argument"),
                    };
                }
            }
        }
        None
    }

    /// Returns the type of the named identifier in the current scope.
    /// If the identifier is unknown in the current scope, returns None.
    pub fn type_of(&self, name: &str) -> Option<VarType> {
        for table in self.tables.iter().rev() {
            for t in table.iter() {
                if t.name == name {
                    return Some(t.vtype.clone());
                }
            }
        }
        None
    }

    /// Returns the index assigned to the named identifier.
    /// If the identifier is unknown in the current scope, returns None.
    pub fn index_of(&self, name: &str) -> Option<usize> {
        for table in self.tables.iter().rev() {
            for t in table.iter() {
                if t.name == name {
                    return Some(t.index);
                }
            }
        }
        None
    }
}

#[cfg(test)]
mod tests {
use super::*;

    #[test]
    fn scope_io() {
        let mut st = SymbolTable::new();
        assert!(st.tables.len() == 0);
        st.scope_in();
        assert!(st.tables.len() == 1);
        st.scope_out();
        assert!(st.tables.len() == 0);
    }

    #[test]
    fn define() {
        let mut st = SymbolTable::new();
        st.scope_in();
        let varName = "x";
        let varType = "int";
        let kind = Kind::Local;
        st.define(varName, varType, kind);
        assert_eq!(st.kind_of("x"), Some("local"));
        assert_eq!(st.type_of("x"), Some(VarType::Int));
        assert_eq!(st.index_of("x"), Some(0));
        st.scope_out();
    }
}

