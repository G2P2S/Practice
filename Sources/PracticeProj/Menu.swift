struct Menu {

    static func run() {
        print("""
        =====================
        Практические задания
        =====================
        1. Числа-близнецы
        """)

        guard let input = readLine(),
              let choice = Int(input) else {
            print("Некорректный ввод.")
            return
        }

        switch choice {
        case 1:
            do {
                try TwinPrimes.run()
            } catch {
                print(error)
            }

        default:
            print("Такого пункта меню нет.")
        }
    }
}
