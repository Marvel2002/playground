
import Foundation

// revoir et test guard statement
// FOR

var dic = ["USA", "France", "New York"]
for (country) in dic
{
    print(country)
}
var cap = 15
var id = 5
switch cap { // on peut mettre plusieurs cas avec une virgule
case 10...11:
    print("bonjour")
    print("test")
case 15 where id == 5:
    print("sympa")
default:
    print("aucun cas")
}
// fini les > ou < mtn c'est entre ...


for num in -5...10 where num % 2 == 0// traverse tout le tableau et rajoute une condition d'afficher si le num est pair
{
    print(num)
}

var champions = [
    ("France", 1998),
    ("Angleterre", 2002),
    ("Allemagne", 2004),
    ("Bresil", 2006),
    ("Croatie", 2008),
    ("Grèce", 2010),
    ("France", 2012)
]

for case let ("France", year) in champions
{
    print(year)
}
// revoir aussi filtering with for case statement
//fallthrough sert a forcer de continuer a matcher dans un switch-case
