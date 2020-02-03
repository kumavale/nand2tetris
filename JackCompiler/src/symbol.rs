
#[derive(Clone, Debug)]
pub enum VarType {
    Int,
    Char,
    Boolean,
    ClassName(String),
    Void,
}

#[derive(Clone, Copy, Debug)]
pub enum Kind {
    Field,
    Static,
    Local,
    Argument,
}

#[derive(Clone, Debug)]
pub struct Table {
    name: String,
    vtype: VarType,
    kind: Kind,
    index: usize,
}

impl Table {
    pub fn new(name: &str, vtype: VarType, kind: Kind, index: usize) -> Self {
        Table { name: name.to_string(), vtype, kind, index, }
    }
}

#[derive(Clone, Debug)]
pub struct SymbolTable {
    tables: Vec<Vec<Table>>,

    field_counter:    usize,
    static_counter:   usize,
    local_counter:    usize,
    argument_counter: usize,

    class_name: String,
}

impl SymbolTable {
    pub fn new() -> Self {
        SymbolTable {
            tables: Vec::new(),
            field_counter:    0,
            static_counter:   0,
            local_counter:    0,
            argument_counter: 0,
            class_name: String::new(),
        }
    }

    pub fn scope_in(&mut self) {
        self.tables.push(Vec::new());
    }

    pub fn scope_out(&mut self) {
        self.tables.pop();
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

    /// Returns the kind of the named identifier in the current scope.
    /// If the identifier is unknown in the current scope, returns None.
    pub fn kind_of(&self, name: &str) -> Option<Kind> {
        for table in self.tables.iter().rev() {
            for t in table.iter() {
                if t.name == name {
                    return Some(t.kind);
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

    pub fn set_class_name(&mut self, class_name: &str) {
        self.class_name = class_name.to_string();
    }
}

