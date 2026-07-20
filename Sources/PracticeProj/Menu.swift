struct Menu {
    
    private static func askYesNo (answer: String) throws -> Bool {
        print(answer)
        guard let choise = readLine() else { throw Errors.invalidInput }
        switch choise {
        case "y","Y","Yes","yes":
            return true
        case "n","N","No","no":
            return false
        default:
            throw Errors.invalidInput
        }
    }
    
    static func run() throws {
        print("""
        =====================
        Практические задания
        =====================
        1. Числа-близнецы
        2. Проверка на палиндром
        3. Списиок оборудования
        """)

        guard let input = readLine(),
              let choice = Int(input) else {
            print("Некорректный ввод.")
            return
        }

        switch choice {
        case 1:
            let useDefault = try askYesNo(answer: "Ипользовать значение по умолчанию [2;500]? (y/n)")
            if useDefault {
                do {
                    try TwinPrimes.run()
                } catch {
                   print("Ошибка")
                }
            } else {
                print("Введите диапазон:")
                if let initial = readLine().flatMap(Int.init),
                   let final = readLine().flatMap(Int.init) {
                    do {
                        try TwinPrimes.run(initialNumber: initial, finalNumber: final)
                    } catch {
                        print("Ошибка.")
                    }
                }
            }
            
        case 2:
            print("Введите строку")
            guard let input = readLine() else {
                throw Errors.emptyInput
            }
            Palindrome.run(input: input)
            
        case 3:
            try Equipment.run()

        default:
            print("Такого пункта меню нет.")
        }
    }
}
