struct SumFinder {
    static func run(number: Int) {
        let bestNumbers = findClosest(number: number, sequence: SumFinder.sequence)
        print("Максимально подходящие числа исходной последовательности, сумма которых равна или\n максиально близка к заданному числу: \(bestNumbers.2)")
        print("Их сумма: \(bestNumbers.1)")
        print("Разница между суммой и исходным числом: \(bestNumbers.0)")
    }
    
    private static let sequence = [11, 23, 45, 120, 38, 155, 86, 181, 65]
    
    private static func findClosest(number: Int, sequence: [Int]) -> (Int, Int, [Int]) {
        var bestDifference = Int.max
        var bestSum = 0
        var bestNumbers: [Int] = []
        for mask in 0..<(1 << sequence.count) {
            var sum = 0
            var selectedNumbers: [Int] = []
            for index in 0..<sequence.count {
                if (mask & (1 << index)) != 0 {
                    sum += sequence[index]
                    selectedNumbers.append(sequence[index])
                }
            }
            let difference = abs(number - sum)
            if difference < bestDifference {
                bestDifference = difference
                bestSum = sum
                bestNumbers = selectedNumbers
            }
        }
        return (bestDifference, bestSum, bestNumbers)
    }
}
