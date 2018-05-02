//: Playground - noun: a place where people can play
//syntaxe et tout le bordel
import UIKit

let myAge: Int = 28;
var averageAge: Double = 28.55;
averageAge = 14;
averageAge = 30;
var result = Double(myAge) * averageAge;
result = 10;

// CAST TYPE(NOMDELAVALUE)
// let WantAdouble = Double(3)
// let WantAdouble = 3 as Double
// let WantADouble: Double = 3

let age1: Int = 42;
let age2: Int = 21;

let avg1: Double = (Double(age1) + Double(age2)) / 2;
let stringtest: Character = "b";
var message: String = "hello, " + "My name is ";
var myName: String = "Marvin ! Enchanté !";
message += myName;
let charSpecial: Character = "%";
message += String(charSpecial);

// Remplacer une value d'une string par une autre value avec "\" + nom de la value entre ( )
let sentiment: String = "heureux";
let phraseDeBase: String = "bonjour je suis \(sentiment)!";

let firstName: String = "Marvin";
let lastName: String = "Matime";
let spaceOnly: Character = " ";
let fullName: String = firstName + String(spaceOnly) + lastName;
let MyDetails = "Hello my name is \(fullName) !";

let coordinates: (Int, Int, Double, Character, String) = (42, 45, 0.2, "a", "Je t'aime");
print(coordinates.1);
print(coordinates.4);
let coordinatesNamed = (schoolName: 42, schoolRegister: 55);
print(coordinatesNamed.schoolRegister + coordinatesNamed.schoolName);
//print met un \n automatique
// declaration de deux variables const auxquelles on assigne l'entièreté d'un tableau
let (una, dos) = coordinatesNamed;
//

let fullStack = (day: 12, month: 04, year: 2014, averageTemperature: 42.0);
let (day, _, _, average) = fullStack;
print(day, average);
var fullStack2 = (day: 12, month: 04, year: 2014, averageTemperature: 42.0);
fullStack2.averageTemperature = 35.222;

let yes :Bool = true;
let no :Bool = false;
let doesOneEqualTwo = !(1 == 2); // ca infer tout seul en bool selon cette condition

let guess :String = "dog";
let dogEqualsCat = guess == "cat";

var image = UIImage(named: "screen.png");
var value = 1;
func sumOperation(b: Int, a: Int) -> Int
{
    return (a + b);
}
for value in 1...5
{
    print(value);
}
// pas de ;
// toujours des {} pour les conditions
// tjr des parentheses pour les conditions (lisibilité)
// tjr des espaces entre les assignations

