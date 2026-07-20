import Foundation

struct TwinPrimes {
    
    static func run(initialNumber: Int = 2, finalNumber: Int = 500) throws {
        if initialNumber<2 || finalNumber<2 { throw Errors.invalidNumber }
        if initialNumber > finalNumber || finalNumber-initialNumber<2 { throw Errors.invalidRange }
        let twins = findTwins(initialNumber: initialNumber, finalNumber: finalNumber)
        for twin in twins {
            print (twin.self)
        }
    }
    
    private static func isPrime(number:Int) -> Bool {
       
        if number < 2 {
            return false
        }
        if number == 2 || number == 3 {
            return true
        }
        for i in 2...Int(sqrt(Double(number))) {
            if number%i==0 {
                return false
            }
        }
        return true
    }
    
    private static func findTwins(initialNumber:Int, finalNumber:Int) -> [(Int, Int)] {
        var twins: [(Int,Int)] = []
        for number in initialNumber...finalNumber-2 {
            let pair:Int = number+2
            if isPrime(number: number) && isPrime(number: pair) { twins.append((number,pair))
            }
        }
        return twins
    }
}
