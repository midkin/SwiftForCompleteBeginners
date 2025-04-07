// checkpoint4

enum mathError : Error {
    case outOfBounds, noIntRoot
}

func sqr(of: Int) throws -> Int {
    if of < 1 || of > 10_000 {
        throw mathError.outOfBounds
    }
    
    var root = 0
    for i in 2...100 {
        if i * i == of {
            root = i
            break
        }
    }
    if (root == 0) {
        throw mathError.noIntRoot
    }
    return root
}

var x = 0
var root: Int
do {
    try root = sqr(of: x)
    print("The square root of \(x) is \(root).")
    
} catch mathError.outOfBounds {
    print("Only integer numbers from 1 to 10.000 are allowed!")
} catch mathError.noIntRoot {
    print("Number \(x) doesn't have an integer root.")
} catch {
    print("An error occured.")
}
