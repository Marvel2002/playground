//: Classes

import Foundation

struct MyStruct {
    let c :Int
    var v = ""
}

class MyClass
{
    let c = 5
    var v = ""
}

var ClassTest = MyClass() // on initialise la structure, possible d'y assigner une valeur en meme temps
var ClassStruct = MyStruct(c: 10, v: "bonjour") // on init c, si elle est vide la haut, sinon on fait rien
ClassStruct.c // . pour acceder
ClassTest.v = "bonjour2" // on asssigne une value dans la classe ou la struct comme ça
var str = ClassTest.v

public class ClassEmployee
{
    var salaryYear :Double = 0.0
    var firstName = ""
    var lastName = ""
}

struct StructEmployee
{
    var salaryYear :Double = 0
    {
        willSet(newSalary)
        {
            print("About to set salaryYear to \(newSalary)")
        }
        didSet{
            if salaryWeek > oldValue {
                print("\(firstName) got a raise")
            }
            else{
                print("\(firstName) got a raise")
            }
        }
    }
    var firstName = ""
    var lastName = ""
    var salaryWeek: Double
    {
        get { // on recupere une var tempo
            return salaryYear/52
        }
        set {
            self.salaryYear = newValue*52 // self designe l'endroit ici meme
        }
    }
}

var myStruct = StructEmployee(salaryYear: 39000, firstName: "Marvin", lastName: "Matime")
myStruct.salaryYear
myStruct.salaryWeek = 1000
myStruct.salaryYear

class GoalTracker
{
    var goal :Double = 0.0
    var unitsCompleted :Double = 0.0
    var unitsLeft :Double
    {
        get {
            return goal - unitsCompleted
        }
    }
}

var g = GoalTracker()
g.goal = 150
g.unitsCompleted = 5
g.unitsLeft
