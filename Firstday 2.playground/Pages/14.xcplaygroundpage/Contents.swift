//: [Previous](@previous)
// generics // lequivalent de void en C, typage genertique
import Foundation

func swapGenerics<T>(a: inout T, b: inout T) // on rajoute <T> avant les argu, on met T a la place du type precede par inout
{
    let tmp = a;
    a = b;
    b = tmp
}



//call de la ft
var a = 5
var b = 12
swapGenerics(a: &a, b: &b) // on envoit les adresses de a et b
var str1 = "salut"
var str2 = "merci"
swapGenerics(a: &str1, b: &str2) // pas possible car pas du meme type
str1

//: [Next](@next)

class List<T> { // creation d'une class generique
    var items = [T]() // on initialise avec le type generic T
    func add(item :T) { // pour method on met pas le <T> apres le add
        items.append(item) // on colle le item de type T a l'item
    }
    func getItemAtIndex(index: Int) -> T? { // retour de type T
        if items.count > index {
            return items[index]
        }
        else {
            return nil
        }
    }
}

struct ListStruct<T> { //struct aussi
    
}

enum ListEnum<T> { // enum aussii
    
}

var stringList = List<String>()
stringList.add(item: "HHELLO")
var intList = List<Int>()
var doubleList = List<Double>() // on cree nos instances comme ca, en changeant le T par le type voulu
