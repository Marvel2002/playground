//: Optionals

import Foundation
// le T represente any type
// nil = ABSENCE (ou pas) DE VALUE, et pas QUE LA VALUE POINTE EST NULL

var int :Int?
int = 40
var int2: Int = int! // on utilise le ! pour dire qu'on est SUR que valeur est non nulle mais vaut mieux verif avec un if
// ! = oui compiler, je suis sur que ma variable contient une variable valide - pas terrible il faut utilser optional BINDING

//optional bind c'est faire un if qui verifie si la valeur est valide avant de l'assigner a qq chose
var str :String?
str = "bonjour"
if let strcpy = str, let strcpy2 = str { // verifie si strcpy est VRAI apres la copie de STR (qui est cense etre vrai aussi)
    print(strcpy, strcpy2) //strcupy uniquement valable dans ce scope dailleurs
}
else
{
    print("nique ta mere")
}

func sum(a: Int, b: Int) -> Int?
{
    if ((a + b) > 10)
    {
        return a + b
    }
    else {
        return nil
    }
}

var c = sum(a: 10, b: 0)

//: [Next](@next)
//tuple
var tuple :(Int, String?, Int) // juste un optional sur tuple
var tuple2 :(Int, String, Int)? // tout le tuple est optional

var name = "john"
var opti1 :String?
var opti2: String?

opti2 = "Marvin"

var nameA = opti1 ?? name // pas fan du principe pour linstant, a voir
