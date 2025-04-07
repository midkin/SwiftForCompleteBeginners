// checkpoint6


struct Car {
    let model: String
    let seats: Int
    var gear: Int
    
    mutating func gearUp() {
        if gear + 1 <= 10 {
            gear += 1
        }
    }
    mutating func gearDown() {
        if gear - 1 >= 0 {
            gear -= 1
        }
    }
    
    init(model: String, seats: Int) {
        self.model = model
        self.seats = seats
        self.gear = 0
    }
}

var golf = Car(model: "VW Golf", seats: 5)
print(golf.model)
print(golf.seats)
print(golf.gear)

golf.gearUp()
golf.gearUp()
golf.gearUp()
golf.gearUp()
print(golf.gear)

golf.gearDown()
golf.gearDown()
print(golf.gear)
