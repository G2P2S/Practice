struct MatrixTranspose {
    static func runDefault() throws {
        let defaultValues = [[1,2,3,4,5],
                             [1,2,3,4,5]]
        let defaultMatrix = Matrix(values: defaultValues)
        print("Исходная матрица:")
        defaultMatrix.printMatrix()
        let transposedMatrix = defaultMatrix.transposed()
        print("Транспонированная матрица:")
        transposedMatrix.printMatrix()
    }
    
    static func run() throws {
        print("Введите количество строк и столбцов для матрицы:")
        if let rows = readLine().flatMap(Int.init),
           let cols = readLine().flatMap(Int.init) {
            print("Введите значения для элементов матрицы")
            var userMatrix = Matrix(rows: rows, cols: cols)
            try userMatrix.fillFromUser()
            print("Исходная матрица:")
            userMatrix.printMatrix()
            let transposedMatrix = userMatrix.transposed()
            print("Транспонированная матрица:")
            transposedMatrix.printMatrix()
        } else {
            throw Errors.invalidInput
        }
    }
    
    private struct Matrix {
        var values: [[Int]]
       
        var rows: Int {
            values.count
        }
        
        var cols: Int {
            values.first?.count ?? 0
        }
        
        init(values: [[Int]]) {
            self.values = values
        }
        
        init(rows: Int, cols: Int) {
            values = Array(
                repeating: Array(repeating: 0, count: cols),
                count: rows
            )
        }
        
        mutating func fillFromUser() throws {
            for row in 0..<rows {
                for col in 0..<cols {
                    if let value = readLine().flatMap(Int.init) {
                        values[row][col] = value
                    } else {
                        throw Errors.invalidInput
                    }
                }
            }
        }
        
        func printMatrix() {
            for row in 0..<rows {
                print(values[row])
            }
        }
        
        func transposed() -> Matrix {
            var transposedMatrix = Matrix(rows: cols, cols: rows)
            for row in 0..<rows {
                for col in 0..<cols {
                    transposedMatrix.values[col][row] = values[row][col]
                }
            }
            return transposedMatrix
        }
    }
}
