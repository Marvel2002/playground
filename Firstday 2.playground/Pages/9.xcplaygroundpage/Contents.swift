//: Methods // c'est des fonctions qui sont incorporés dans les structs/class

import Foundation

struct EmployeeStruct {
    var firstName = ""
    var lastName = ""
    var salaryYear = 0.0
    mutating func giveRaise(amount: Int) -> Void // utiliser le mutating keyword sur une struct/ pas besoin sur une class
    {
        self.salaryYear += Double(amount); // rajouter le self. par sécurité?
        print("Wow le salary year est mtn de \(salaryYear)")
    }
}

public class EmployeeClass {
    var firstName = ""
    var lastName = ""
    var salaryYear = 0.0
    func getFullName(physique: String) -> String // on peut ajouter une ft a une classe, qui fait des choses avec la diteclass
    {
        return firstName + " " + lastName + " Plutot \(physique)"
    }
    func giveRaise(amount: Int) -> Void
    {
        self.salaryYear += Double(amount); // rajouter le self. par sécurité? rep ligne 30
        print("Wow le salary year est mtn de \(salaryYear)")
    }
    func isEqualFirstName(firstName : String) -> Bool{
        return self.firstName == firstName // non, on rajoute le self au cas le var appelée a le meme nom que la val de la struct
    } // on peut retourner un booleen de comparaison de la sorte
}

var myStruct = EmployeeStruct(firstName: "Marvin", lastName: "Matime", salaryYear: 12000) // on init direct dans une struc
var myClass = EmployeeClass() // pas dans une class
myClass.firstName = "Auriane"
myClass.lastName = "Bouhajder"
myClass.salaryYear = 4544
myClass.getFullName(physique: "Bonne")
myClass.giveRaise(amount: 150)
myClass.giveRaise(amount: 150)
myClass.isEqualFirstName(firstName: "Auriane")

//: [Next](@next)
