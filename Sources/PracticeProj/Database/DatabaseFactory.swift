struct DatabaseFactory {
    func createDatabase() throws -> DatabaseManager {
        let database = try DatabaseManager(path: "/Users/maksimknikhuta/Desktop/6semester/PracticeProj/equipment.sqlite")
        try database.createTables()
        try database.seedDatabase()
        return database
    }
}
