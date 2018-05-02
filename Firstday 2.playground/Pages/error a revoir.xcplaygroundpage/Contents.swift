//: handling ERROR cmt ca marche

import Foundation


//: [Next](@next)

enum MyError : Error { // on cree un enum d'erreur conforme avec le protocol Error
    case Minor
    case Bad (description: String)
    case Terrible
}

enum PlayerNumberError: Error {
    case NumberTooHigh(description: String)
    case NumberTooLow(description: String)
    case NumberAlreadyAssigned
    case NumberDoesNotExist
}

// revenir plus tard ici
