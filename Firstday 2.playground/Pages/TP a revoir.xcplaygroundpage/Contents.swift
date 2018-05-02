//: in depth protocolos = a revoir plus tard, cest POP et pas POO

class Animal {
    fileprivate var landAnimal = false
    fileprivate var landAttack = false
    fileprivate var landMovement = false
    
    fileprivate var seaAnimal = false
    fileprivate var seaAttack = false
    fileprivate var seaMovement = false
    
    fileprivate var airAnimal = false
    fileprivate var airAttack = false
    fileprivate var airMovement = false
    
    fileprivate var hpAnimal = 0
    init() {
        landAnimal = false
        landAttack = false
        landMovement = false
        seaAnimal = false
        seaAttack = false
        seaMovement = false
        airAnimal = false
        airAttack = false
        airMovement = false
        hpAnimal = 0
    }
    func isLandAnimal() -> Bool {
        return landAnimal
    }
    func canLandAttack() -> Bool {
        return landAttack
    }
    func canLandMove() -> Bool {
        return landMovement
    }
    func isSeaAnimal() -> Bool {
        return seaAnimal
    }
    func canSeaAttack() -> Bool {
        return seaAttack
    }
    func canSeaMove() -> Bool {
        return seaMovement
    }
    func isAirAnimal() -> Bool {
        return airAnimal
    }
    func canAirAttack() -> Bool {
        return airAttack
    }
    func canAirMove() -> Bool {
        return airMovement
    }
    func doLandAttack() {}
    func doLandMove() {}
    func doSeaAttack() {}
    func doSeaMove() {}
    func doAirAttack() {}
    func doAirMove() {}
    func takeHit(amount: Int){
        hpAnimal -= amount
    }
    func hpAnimalRemaining() -> Int {
        return hpAnimal
    }
    func isAnimalAline() -> Bool {
        return hpAnimal > 0 ? true : false
    }
}

class Lion :Animal {
    override init () {
        super.init()
        landAnimal = true
        landAttack = true
        landMovement = true
        hpAnimal = 20
    }
    override func doLandAttack() {
        print("lion attack")
    }
    override func doLandMove() {
        print("lion moves")
    }
}

class Alligator :Animal {
    override init () {
        super.init()
        landAnimal = true
        landAttack = true
        landMovement = true
        seaAnimal = true
        seaAttack = true
        seaMovement = true
        hpAnimal = 35
    }
    override func doLandAttack() {
        print("Alligator lands attack")
    }
    override func doLandMove() {
        print("Alligator Land moves")
    }
    override func doSeaMove() {
        print("Alligator Sea moves")
    }
    override func doSeaAttack() {
        print("Alligator Sea attack")
    }
}

var animal = [Animal]()
animal.append(Alligator()) // on cree les fils sur le animal originel
animal.append(Alligator()) // on cree un deuxieme alli
animal.append(Lion()) // et un lion
// a revoir

//: [Next](@next)
