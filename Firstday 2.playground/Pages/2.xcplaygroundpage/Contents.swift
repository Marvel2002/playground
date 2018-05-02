//: [Previous](@previous)
// maniputation de str et de nil
import Foundation

var str = "Hello, playground"
var word = "merci"
var line = ""
print(str, word, "je vais \(word)", separator: ",", terminator: ".", to:&line)
print(line, terminator: "")

//print() separator: "" en argument et terminator: ""
//“The use of constants is encouraged in Swift. ”

let testConstant = 21
var testVariable = 42

let testConstant2 = 0, testConstant3 = 42
var test = 12, verre = 13
print(test, verre, terminator: "")
//possibilite de mettre des _ dans un int genre let speedOfLight = 300_00

var num :Double = 12.2
var num_second :Int = 12

print(num + Double(num_second), terminator: "")
var multiLine = "Hello"
print(multiLine)


var stringA :String = "Salut ! "
var stringB :String = "Tu vas bien ?? "
var name :String = "Marvin "
var stringC = stringA + name + stringB + "T'es en place ou quoi \(name)??".uppercased()
// .fonction ajoute une ft a une string, genre lower ou uppercased
// .isEmpty string vide ?
// .hasSuffix fini pareil que string ?
// .haxPrefix commence pareil que string ?
print(stringA.hasSuffix("Salut !"))
print(stringB.replacingOccurrences(of: "vas", with: "comptes"))
// .replacingOccurences, remplace ceci par cela

var path :String = "/one/two/three/four"
let startIndex = path.index(path.startIndex, offsetBy: 4)
let endIndex = path.index(path.startIndex, offsetBy: 14)
let sPath = path[startIndex ..< endIndex]
// si on veut jouer avec un Substring plus lgt, faut le convertir et le recuperer dans un String
path.count
var nulValue :Int?
var nulValuee :Int
nulValue = nil
// quon mette une var a null si on est sur quelle soit null
var stringTest :String?
stringTest = "lol"
if stringTest != nil
{
    print(stringTest!) // mettre un '!' apres une variable optionnel pour y faire appel proprement
}
var temp :String?
if var temp = temp {
    temp = "mdr"
    print(temp)
    print("Can not use temp outside of the if bracket")
}
else {
    print(" myOptional est nil")
}
//: [Previous](@previous)

//Optional Variable
var StringOne : String?
if StringOne != nil
{
    print(StringOne!)
}
else
{
    print("StringOne est nul miskine")
}
if let tmp = StringOne {
    print(tmp)
}
else
{
    print("Optional binding: StringOne est nul")
}
var charCount1 = StringOne?.count // assigne le strlen de la string avec .count si la variable stringOne est valid
StringOne = "http://www.google.fr/"
if StringOne != nil
{
    print(StringOne!)
}
else
{
    print("StringOne est nul miskine")
}
if let tmp = StringOne {
    print(tmp)
}
else
{
    print("Optional binding: StringOne est nul")
}
var charCount2 = StringOne?.count
