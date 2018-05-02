//: [Previous](@previous) POO PARENT/ENFANT
//
import Foundation

// UN ENFANT RECUPERE LES PARAMETRES ET LES VALEURS
//: [Next](@next)

public class Plant { // class parent
    var height = 10.0
    var age = 0
    func growHeight(inches: Double) {
        self.height += inches
    }
    func getDetails() -> String {
        return "Height \(height) et Age \(age)"
    }
    var description : String {
        return "Base class is Plant"
    }
}

public class Tree :Plant { // class enfant du parent
    var limbs = 0
    func limbGrow() {
        self.limbs += 1
    }
    func limbFall() {
        self.limbs -= 1
    }
    override func getDetails() -> String {
        let details = super.getDetails() // en utilsant le super. on recupere le retour de la class du dessus
        return "Details \(details) et limbs \(limbs)"
    }
    override final var description: String { // on met un final pour dire qu'on veut pas override pour le futur
        return ("\(super.description) I am a Tree class.") // override une value, a revoir
    }
}
// on rajoute override sur une fonction enfant, pour faire la MEME chose que la parent, mais differement
class pineTree :Tree { // class enfant de l'enfant
    var epines = 0
}

class melonTree :Tree {
    var epaisseur = 2.0
}

var plant = Plant()
var tree = Tree()
tree.height
tree.age = 50
plant.getDetails()
tree.getDetails()
tree.description

