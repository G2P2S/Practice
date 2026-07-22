import Foundation

struct Deposit {
    static func run(initialDeposit: Decimal = 150000, months: Int = 60) throws {
        if initialDeposit > 0 && months > 0 {
            var finalDeposit = calculateDeposit(initialDeposit: initialDeposit, months: months)
            var roundedFinalDeposit: Decimal = 0
            NSDecimalRound(&roundedFinalDeposit, &finalDeposit, 2, .bankers)
            print("Сумма вклада через \(months) месяцев: \(roundedFinalDeposit)₽")
        } else { throw Errors.invalidInput }
    }
    
    private static func calculateDeposit(initialDeposit: Decimal, months:Int) -> Decimal {
        var deposit = initialDeposit
        for _ in 0..<months {
            deposit += deposit * (0.16/12)
        }
        return deposit
    }
}
