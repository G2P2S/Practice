struct Palindrome {
    static func run(input:String) {
        let isPal = isPalindrome(input: input)
        if isPal {
            print("Является палиндромом")
        } else {
            print("Не является палиндромом")
        }
    }
    
    private static func isPalindrome(input:String) -> Bool {
        if input.isEmpty { return true }
        var leftIndex = input.startIndex
        var rightIndex = input.index(before: input.endIndex)
        while leftIndex < rightIndex {
            if input[leftIndex] == input[rightIndex] {
                leftIndex = input.index(after: leftIndex)
                rightIndex = input.index(before: rightIndex)
            } else {
                return false
            }
        }
        return true
    }
}
