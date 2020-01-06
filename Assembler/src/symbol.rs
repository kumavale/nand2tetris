use std::collections::HashMap;

pub struct SymbolTable {
    table: HashMap<String, u16>,
    current: u16,
}

impl SymbolTable {
    pub fn new() -> Self {
        let mut table = HashMap::new();
        table.insert("SP".to_string(),     0x0);
        table.insert("LCL".to_string(),    0x1);
        table.insert("ARG".to_string(),    0x2);
        table.insert("THIS".to_string(),   0x3);
        table.insert("THAT".to_string(),   0x4);
        table.insert("R0".to_string(),     0x0);
        table.insert("R1".to_string(),     0x1);
        table.insert("R2".to_string(),     0x2);
        table.insert("R3".to_string(),     0x3);
        table.insert("R4".to_string(),     0x4);
        table.insert("R5".to_string(),     0x5);
        table.insert("R6".to_string(),     0x6);
        table.insert("R7".to_string(),     0x7);
        table.insert("R8".to_string(),     0x8);
        table.insert("R9".to_string(),     0x9);
        table.insert("R10".to_string(),    0xa);
        table.insert("R11".to_string(),    0xb);
        table.insert("R12".to_string(),    0xc);
        table.insert("R13".to_string(),    0xd);
        table.insert("R14".to_string(),    0xe);
        table.insert("R15".to_string(),    0xf);
        table.insert("SCREEN".to_string(), 0x4000);
        table.insert("KBD".to_string(),    0x6000);
        SymbolTable { table, current: 0x10 }
    }

    #[allow(non_snake_case)]
    /// Adds the pair (symbol, address) to the table.
    pub fn addEntry(&mut self, symbol: &str, address: u16) {
        self.table.insert(symbol.to_string(), address);
    }

    #[allow(non_snake_case)]
    /// Returns the address associated with the symbol
    /// if contained in symbol table.
    pub fn getAddress(&self, symbol: &str) -> Option<&u16> {
        self.table.get(symbol)
    }

    pub fn inc_current(&mut self) {
        self.current += 1;
    }

    pub fn current(&self) -> u16 {
        self.current
    }
}

#[cfg(test)]
mod test {
use crate::symbol::SymbolTable;

    #[test]
    #[allow(non_snake_case)]
    fn test_addEntry() {
        let mut st = SymbolTable::new();
        st.addEntry("aaa", 0);
        st.addEntry("bbb", 0);
        st.addEntry("aaa", 0);
    }

    #[test]
    #[allow(non_snake_case)]
    fn test_getAddress() {
        let st = SymbolTable::new();
        assert_eq!(st.table.get("SP"),     Some(&0));
        assert_eq!(st.table.get("R0"),     Some(&0));
        assert_eq!(st.table.get("SCREEN"), Some(&0x4000));
        assert_eq!(st.table.get("NONE"),   None);
    }
}

