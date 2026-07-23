struct Equipment {
    static func run() throws {
        let factory = DatabaseFactory()
        let database = try factory.createDatabase()
        print("Входные списки:")
        try database.showOriginalTables()
        print("Введите офис для просмотра имеющегося оборудрвания:")
        if let location = readLine() {
            try database.showLocatedEquipment(location: location)
        } else {
            throw Errors.emptyInput
        }
    }
}
