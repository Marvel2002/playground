//: FUNCTIONS

import Foundation

func helloName(name: String, age: Int = 29, body: String) -> Void // func - nom de la ft - (nm argu: type argu) - -> type de retour
{
    print("Bonjour \(name), je vois que tu as \(age) et tu es \(body) !")
}
helloName(name: "Auriane", body: "Bonne") // manque une variable, celle par defaut sera mise
helloName(name: "Auriane", age: 36, body: "bien faite") // manque une variable, celle par defaut sera mise

//: [Next](@next)

// func tableau() -> (Int, String, Double)
func tableau() -> (range:Int, string:String, deci:Double) // vaut mieux utiliser des nominations plus que rien (comme au dessus)
{
    let tab = (125, "lol", 121.23)
    return (tab)
}

let tab = tableau()
tab.range

func sum(a: Int, b: Int) -> String? // mettre le retour avec ? si on pense que ptete ca va retourner null
{
    print(a + b)
    return nil
}
sum(a: 5, b: 50)

func tupleReturn(ageDeMaFille age: Int) -> (taille: Int, largeur: Int, hauteur: Int)? // on peut faire pareil avec un tupple
{
    if (age > 10)
    {
        return (12, 50, 100)
    }
    return nil
}

let tuple = tupleReturn(ageDeMaFille: 11) // si age > 10, tuple valide, sinon nil
// on peut ajouter un alias, une meilleure facon d'expliquer les bails, sorte d'alias avant le nom (ligne 31)

func sayHello(greeting: String, names: String...) // ... permet de donner un nb d'argu obligatoire comme en ligne 51
{
    for name in names
    {
        print("\(greeting)\(name)")
    }
}

sayHello(greeting: "Bonjour ", names: "Marvin", "Auriane", "Adrian", "Timothée")
func twoNums(a: inout Int, b: inout Int)
{
    let tmp = a
    a = b
    b = tmp
}

var one = 42;
var two = 93;
twoNums(a: &one, b: &two) // on envoit l'adresse des variables pour modifier via un inout, car on modifie a la SOURCE
one // 93 et pas 42

func checkIp(ipAdress: String?) -> Bool
{
    guard let ipAdress = ipAdress else {
        return false
    }
    let octets = ipAdress.components(separatedBy: ".").map{String($0)}
    for octet in octets
    {
        if (!validOctet(octet: octet))
        {
            return false
        }
    }
    return true
}

func validOctet(octet: String) -> Bool
{
    let octetNum = Int(String(octet))
    if (octetNum! < -1 || octetNum! > 256)
    {
        return false
    }
    return true
}

checkIp(ipAdress: "255.55.0.1") // verifie si l'ip est bonne

