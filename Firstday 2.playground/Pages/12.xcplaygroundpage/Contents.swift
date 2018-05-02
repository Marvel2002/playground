//: Protocols // sorte de cahier des charges a suivre pour les method/datas

import Foundation

protocol MyProtocol
{
    var firstName :String { // on attend plus bas une variable de type string
        get set // read et write only
    }
    var lastName :String { // pareil
        get set
    }
    func getFullName() -> String // on veut une fonction qui return un string, tout simplement, sans braces
}

class MyClass :MyProtocol // on ajoute ici le protocol correspondant, juste apre
{
    var firstName = "" // la class CORRESPOND au protocole (meme variable)
    var lastName = "" // si on met un int par exemple, pareil, ca marche pas
    func getFullName() -> String {
        return "salut"
    }
} // si c'est conforme c'est cool

//: [Next](@next)

var person : MyProtocol // on "assigne" le protocol a cette variable
var scientist = MyClass() // on cree ensuite le scientist
person = scientist // on recupere ensuite la var

// Extensions

extension String {
    var firstLetter: Character? {
        get {
            return self.characters.first
        }
    }
    
    func reverse() -> String {
        var reverse = ""
        for letter in self.characters {
            reverse = "\(letter)" + reverse
        }
        return reverse
    }
}

var myString = "test Merci"
myString.reverse() // permet de creer une extension de type/ mal compris cela dit
