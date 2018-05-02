//: ARC / Memory Managment

class MyClass
{
    var name = ""
    init (name: String) // prend un argument string pdt le call
    {
        self.name = name
        print("Initializing class with name \(self.name)")
    }
    deinit {
        print("Releasing class with name \(self.name)")
    }
}

var class1ref1 :MyClass? = MyClass(name: "one")
var class2ref1 :MyClass? = MyClass(name: "two")
var class2ref2 :MyClass? = class1ref1 // sur cette 3eme ref, ARC peut pas free la memoire

class1ref1 = nil
class2ref1 = nil
class2ref2 = nil

//: [Next](@next)


