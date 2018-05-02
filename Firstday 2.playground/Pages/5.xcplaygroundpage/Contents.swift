//: DICTIONNARIES

import Foundation
// se declare comme un tableau, avec une pair (key : value)
var countries =
[
    "UK" : "United Kingdom",
    "USA":"United States of America",
    "FR":"FRANCE LA MEILLEURE",
]
var countriesvide = [String:String]()
countriesvide = ["lol":"erci", "test":"deux"]
countries["UK"] = "WOW" // on change via la key (possible de
countries["FR"] // on retrive la value par la key
countries["PG"] = "Portugal" // simple ajout d'une key
countries.count // compte le nombre de key
countries.isEmpty
countries["FR"] = nil // is removed
countries.count // compte le nombre de key
countries.removeAll(); // remove all
countries.count // compte le nombre de key

//: SET

var mySet = Set<String>() // un vide (explicit type)
var mySet2 = Set(["one", "two", "three"]) // un contenant
mySet.insert("one")
mySet.insert("two") // ajouter (renvoit un boolean)
mySet.count
mySet.insert("one") // ignoré car deja existant
mySet.count
mySet.contains("two") // check si "two" apparait dans les et
for set in mySet
{
    print(set)
}
mySet.remove("one") // remove 1
mySet.removeAll() // remove all
mySet2.removeAll()
mySet = (["one", "two", "three", "abc"])
mySet2 = (["abc", "def", "ghi", "one"])
var newSet = mySet.union(mySet2) // cree un set qui contient les valeurs uniques des deux sets
mySet.formUnion(mySet2) // modifie le myset direct en faisant la meme chose
newSet = mySet.subtracting(mySet2) // cree un set qui contient les valeurs uniques du set1 dans le set2
newSet = mySet.intersection(mySet2) // les doublons des deux sets
newSet = mySet.symmetricDifference(mySet2) // cree 

//Tuples - Sert a stocker toute sorte de data



var tuple = (99, 125, "test", 12.2) // on random des donnees
var (avantCent, intRandom, strTest, doubleRandom) = tuple // on cree des data quon assigne au tuple du haut
avantCent
var tuple2 = (test:"salut", lol:"pourquoi", langue:"swift", note:10) // ajout d'une clef pour les donnees
tuple2.test // on accede via le .
