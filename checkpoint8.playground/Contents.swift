// checkpoint8


protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    
    func summary()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    func summary() {
        print("This house has \(rooms) rooms, it costs \(cost) euros and is sold by \(agent) Estate Agent.")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    func summary() {
        print("This office has \(rooms) rooms, it costs \(cost) euros and is sold by \(agent) Estate Agent.")
    }
}

let house = House(rooms: 2, cost: 100_000, agent: "House Agent")
let office = Office(rooms: 1, cost: 170_000, agent: "Office Agent")

house.summary()
office.summary()
