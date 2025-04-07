// checkpoint7


class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Barking")
    }
    
    init() {
        super.init(legs: 4)
    }
}

final class Corgi: Dog {
    override func speak() {
        print("gruff")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("ruff")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    func speak() {
        print("Meowing")
    }
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
}

final class Persian: Cat {
    override func speak() {
        print("Meowing with style")
    }
}

final class Lion: Cat {
    override func speak() {
        print("Meowing out loud")
    }
}

let animal = Animal(legs: 4)
print(animal.legs)

let dog = Dog()
dog.speak()

let corgi = Corgi()
corgi.speak()

let poodle = Poodle()
poodle.speak()

let cat = Cat(isTame: true)
cat.speak()

let persian = Persian(isTame: false)
persian.speak()

let lion = Lion(isTame: false)
lion.speak()
