import SQLite

struct DatabaseManager {
    let equipmentList: [(inventoryNumber: Int, equipment: String, location: String)] = [
        (1288, "Монитор", "ДО «Ялта»"),
        (1143, "ПК", "ДО «Евпатория»"),
        (1116, "МФУ", "ДО «Краснодарский»"),
        (1316, "Принтер", "ДО «Симферополь»"),
        (1126, "WEB-камера", "ДО «Алушта»"),
        (1058, "Телефон", "ДО «Армянск»"),
        (1090, "POS-терминал", "ДО «Краснодарский»"),
        (1103, "ИБП", "ДО «Алушта»"),
        (1255, "Монитор", "ДО «Симферополь»"),
        (1340, "ПК", "ДО «Ялта»"),
        (1850, "МФУ", "ДО «Севастополь»"),
        (1546, "Принтер", "ДО «Евпатория»"),
        (1267, "WEB-камера", "ДО «Керчь»"),
        (1093, "Телефон", "ДО «Армянск»"),
        (1835, "POS-терминал", "ДО «Севастополь»"),
        (1530, "ИБП", "ДО «Керчь»")
    ]
    
    let connection: Connection
    
    init (path: String) throws {
        self.connection = try Connection(path)
        try self.connection.execute("""
            PRAGMA foreign_keys = ON;
            """)
    }
    
    func createTables() throws {
        try self.connection.execute("""
            CREATE TABLE IF NOT EXISTS Equipment (
                inventory_number INTEGER PRIMARY KEY,
                equipment TEXT
            );
            
            CREATE TABLE IF NOT EXISTS EquipmentLocation (
                inventory_number INTEGER PRIMARY KEY,
                location TEXT,
                FOREIGN KEY (inventory_number)
                    REFERENCES Equipment(inventory_number)
            );
        """)
    }
    
    func seedDatabase() throws {
        for equipment in self.equipmentList {
            try self.connection.execute("""
                INSERT INTO Equipment (inventory_number, equipment)
                VALUES ('\(equipment.inventoryNumber)','\(equipment.equipment)')
                ON CONFLICT(inventory_number)
                DO UPDATE SET equipment = excluded.equipment;
                
                INSERT INTO EquipmentLocation (inventory_number, location)
                VALUES ('\(equipment.inventoryNumber)','\(equipment.location)')
                ON CONFLICT(inventory_number)
                DO UPDATE SET location = excluded.location;
                """)
        }
    }
    
    func showLocatedEquipment(location: String) throws {
        let equipmentStatement = try self.connection.prepare("""
            SELECT 
                EquipmentLocation.location,
                Equipment.inventory_number,
                Equipment.equipment
            FROM Equipment
            JOIN EquipmentLocation
                ON Equipment.inventory_number = EquipmentLocation.inventory_number
            WHERE EquipmentLocation.location = '\(location)'
            """)
        
        for equipment in equipmentStatement {
            if let equipmentLocation = equipment[0],
               let equipmentId = equipment[1],
               let equipmentName = equipment[2] {
                print("\(equipmentId)  \(equipmentName)  \(equipmentLocation)")
            }
        }
    }
    
    func showAllTables() throws {
        let equipmentStatement = try self.connection.prepare("""
            SELECT
                Equipment.inventory_number,
                Equipment.equipment,
                EquipmentLocation.location
            FROM Equipment
            JOIN EquipmentLocation
                ON Equipment.inventory_number =
                   EquipmentLocation.inventory_number;
            """)
        
        for equipment in equipmentStatement {
            if let equipmentLocation = equipment[0],
               let equipmentId = equipment[1],
               let equipmentName = equipment[2] {
                print("\(equipmentId)  \(equipmentName)  \(equipmentLocation)")
            }
        }
    }
}
