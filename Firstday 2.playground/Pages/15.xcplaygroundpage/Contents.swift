//: [Previous](@previous)
// Closure
import Foundation
// on assigne un bout de code a une variable
let str = { () -> Void in // on ouvre les brackets, () donc pas dargu, ->Void me renvoit rien et IN puis on ferme
    print("bonjour")
}
str() // on appelle ce bout tout simplement comme ca

//: [Next](@next)

let str2 = { (string: String) -> String in
    return "bonjour \(string)"
}
// prend un argu cette fois et en renvoit un
str2("Marvin")
