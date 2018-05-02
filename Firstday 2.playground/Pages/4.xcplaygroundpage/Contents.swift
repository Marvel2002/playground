//: ARRAY
import Foundation

// On prefere l'implicit que l'explicit en general SAUF pour les arrays

var arrayOne = [Int]() // cree un array vide de type particulier
var arrayTwo :[Int] = [] // seconde facon, mieux en fait
var arrayThree = [Double]()
var arrayFor = [Float]()
var arrayFive = [AnyObject]() // AnyObject = tte les classes d'objet ; Any = tous les types
var myArray: [Any] = [1, "2"] // cree un array de tous les types
var arraySix = [Int](repeating: 10, count: 7) // remplit 7 fois le tableau avec 10
var arraySeven = [[10,2], [21, 4]]
var arrayEight = [[Int]]() // array d'array init a nil
var arrayNine = [10, 9, 8, 7, 6, 4]
var arrayTen = [[10, 9], [8, 7], [6, 4]]
print(arrayNine.first!)
print(arrayNine.last!)
print(arrayNine.count)
print(arrayTen[0].count)
arrayTen.isEmpty // check si empty ou pas
arrayOne.isEmpty
arrayNine.append(2) // permet d'ajouter UN seul element
arrayNine += [2, 1, 0, -1] // permet d'ajouter plusieurs elements
arrayNine.insert(150, at: 2) // insert un element AT la position index X (mieux vaut append si on l'add a la fin)
var remove = arrayNine.remove(at: 1)
var remove2 = arrayNine.removeLast()
var arrayEleven = [45, 44, 40, 12, 45, 32, 45]
var semiArray = arrayEleven[...3] // tous les elemnts jusqua l'index 3 INCLU
semiArray = arrayEleven[4...] // tout les elements a partir du 4
semiArray = arrayEleven[..<2] // tout les elements jusquau 2 EXCLU
arrayEleven[1...3] = [1, 2, 3] // ajoute des elements en BULK a des endroits precis
arrayEleven.sort(){$0 < $1} // trie et REMPLACE avec une regle du plus petit au plus grand
arrayEleven.sort(){$1 < $0}
var sorted = arrayEleven.sorted(){$0 < $1} // SORTED TRIE et renvoi un new tab sans modifier l'ancien
sorted
arrayEleven
var arrayTwelve = [1,2,3,4,5,6,7,8,9]
var twelve = arrayTwelve.filter{$0 > 2 && $0 < 9} // filtre et renvoi la valeur si elle est superieure a 2 et inferieure a 9
twelve = arrayTwelve.map{ $0 * 10 } // applique une regle a TOUT le tableau
var thirteen = arrayTwelve.map{"num = \($0)"} //  cree un tableau de string a partir du tab d'int
thirteen
arrayTwelve.forEach{print($0)} // foreach classique, parcours tout le tableau et print
for number in arrayTwelve // pour chaque VAR de mon choix dans array, fais ceci
{
    print(number)
}
for (value, index) in arrayTwelve.enumerated() // si on veut retrieve lindex et la value, on met un tupple + .enumerated
{
    print(value, index)
}
