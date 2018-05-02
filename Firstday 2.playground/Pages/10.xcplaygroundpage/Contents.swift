//: custom initializer, on peut init les valeurs comme on veut en fonction des argus

import Foundation

public class ClassEmployee
{
    var firstName :String
    var lastName :String
    var salaryYear = 0.0
    
    init() { // le init est implicite sur les exemples precedent, mais il se passe ca en vrai
    firstName = ""
    lastName = ""
    salaryYear = 25.255
    }
    init?(prenom:String, nom:String, salaire:Double) { // on peut creer plusieurs init method et en fonction des argu, l'init qui correspond sera choisi
        firstName = prenom
        lastName = nom
        salaryYear = salaire
        if (salaryYear < 1)
        {
            return nil
        }
    }
    init(prenom:String, nom:String)
    {
        firstName = prenom
        lastName = nom
    }
}

var employeeClass = ClassEmployee() // correspond a l'init par defaut ( sans argu )
if var employeeClass2 = ClassEmployee(prenom:"Marvin", nom:"Matime", salaire:1) // correspond au deuxieme init
{
    print("init good")
}
else {
    print("init pas good")
}
var employeeClass3 = ClassEmployee(prenom:"marvin", nom:"matime")
employeeClass.firstName
employeeClass.salaryYear
//employeeClass2.firstName
//employeeClass2.salaryYear
employeeClass3.firstName



//: [Next](@next)
