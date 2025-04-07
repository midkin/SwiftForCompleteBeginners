// checkpoint5


func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 1...size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

func randomNumber() -> Int {
    Int.random(in: 1...20)
}

let rolls = makeArray(size: 50) { Int.random(in: 1...20) }
print(rolls)
