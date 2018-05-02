import UIKit

//Enums

enum Planets :Int // indiquer le type si on veut y mettre des données, sinon c'est du raw
{
    case Earth = 2
    case Venus // = 3 par defaut
    case Saturn // = 4 par defaut
}

enum device :String
{
    case Musicplayer = "Ipod"
    case Videoplayer = "Ipad"
}

var planeteWeLiveOn = Planets.Venus
var int :Int = 2
print(planeteWeLiveOn.rawValue)
planeteWeLiveOn = .Venus // le type est implicité donc plus besoin de mettre le enum. avant la value
if (planeteWeLiveOn == .Venus)
{
    print("lol", terminator: "")
}
planeteWeLiveOn = .Saturn
switch planeteWeLiveOn {
case .Earth:
    print("We live on Earth ana that's cool!")
case .Venus:
    print("We live on Venus and that's cold!!!!!!!!")
default:
    print("Wait, where do we live \(planeteWeLiveOn.rawValue) ??")
    print("lol") // pas besoin d'accolade on met ligne a la suite
}

print("We are using \(device.Musicplayer.rawValue)") // la raw value nous affiche la valeur assigné a l'enum

enum Planets2 :String
{
    case Mercure = "ovale"
    case Venus = "ronde"
}

if (Planets2.Mercure.rawValue == "ovale")
{
    print(Planets2.Venus.rawValue)
}

enum Product
{
    case Book(Double, Int, Int)
    case Puzzle(Double, Int)
}

var masterSwift = Product.Book(79.00, 2017, 310)
switch masterSwift
{
case .Book(let price, let year, let pages): // on cree trois variables quon peut recuperer sur de l'indefini dans l'enum
    print("1\(price) 2\(year) 3\(pages)")
case .Puzzle(let price, let year):
        print("1\(price), 2\(year)")
}

enum politesse
{
    case merci(Int, Int)
    case salut(Double, Double)
}

// a pratiquer
