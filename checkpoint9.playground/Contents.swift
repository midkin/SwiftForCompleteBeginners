// checkpoint9


func giveMeOneNumber(from: [Int]?) -> Int { return from?.randomElement() ?? Int.random(in: 1...100) }

var list: [Int]?
// list = nil
list = [2, 7, 8, 3, 11, 27, 1, 4]
giveMeOneNumber(from: list)
