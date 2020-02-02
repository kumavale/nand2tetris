
pub enum VarType {
    Int,
    Char,
    Boolean,
    ClassName(String),
    Void,
}

pub enum Kind {
    Field,
    Static,
    Local,
    Argument,
}

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

pub struct SymbolTable {
    tables: Vec<Vec<Table>>,
    field_counter:    usize,
    static_counter:   usize,
    local_counter:    usize,
    argument_counter: usize,
}

impl SymbolTable {
    pub fn new() -> Self {
        SymbolTable {
            tables: Vec::new(),
            field_counter:    0,
            static_counter:   0,
            local_counter:    0,
            argument_counter: 0,
        }
    }

    pub fn scope_in(&mut self) {
        self.tables.push(Vec::new());
    }

    pub fn scope_out(&mut self) {
        self.tables.pop();
    }

    pub fn define(&mut self, name: &str, vtype: VarType, kind: Kind) {
        if let Some(table) = self.tables.last_mut() {
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
        }
    }
}

