var str = "Hello Playground"
var str2 = "Hello Playground2"

import Cocoa
import Foundation

let friends: Array<String> = ["Bob", "Fred", "Paul"]
let randNums: [Int] = [3, 6, 9]
print("Rand Num1: \(randNums[0])")

// Empty array that is going to hold Strings

var groceries = [String]()

groceries.append("Tomato")
groceries.append("Potato")
groceries.append("Beans")

print("Num of groceries: \(groceries.count)")

groceries.insert("Flour", at: 2)
print(groceries)

groceries[2] = "Whole Wheat Flour"
print(groceries)

if let match = groceries.index(of: "Beans") {
    groceries.remove(at: match)
}

groceries.remove(at: 0)
print(groceries)

// Sort in ascending order

var numbers = [2,4,34,6,33,1,67,20]


var numbersSorted = numbers.sorted( by: { (first, second ) -> Bool in
    
    return first < second
})

print(numbersSorted)

// Sort in descending order

var users = [3, 5, 20, 14, 1, 7, 18]

var descendingNums = users.sorted( by: {(a, b) -> Bool in
    
    return a > b
})
print(descendingNums)

// Reversing an array list

var names: [String] = ["Apple", "Microsoft", "Sony", "Lenovo", "Asus"]

var reversedNames = [String]()

for arrayIndex in stride(from: names.count - 1, through: 0, by: -1) {
    reversedNames.append(names[arrayIndex])
}
print(reversedNames)

// Arrays inside of an Array

var array: [[String]] = [["00", "10", "20"], ["01", "11", "21"]]

for column in array {
    for row in column {
        print("\(row) : \(column)")
    }
}

// A Dictionary holds key / value pairs
// The key is the same thing as the index in arrays

var superHeroes = [String: String]()

superHeroes["Superman"] = "Clark Kent"

print("Number of heroes: \(superHeroes.count)")

superHeroes.removeValue(forKey: "Superman")

print(superHeroes)

// Tuples are used to return many differnt value types from a function all at once

var stats = (height: 6.25, weight: 179, name: "Derek")

print("Height: \(stats.height)")

// for loops

for i in 1...10 {
    if Bool(i % 2 as NSNumber) {
        continue
    }
    if i == 10 {
        break
    }
    print(i)
}

for j in -5...5 {
    print("\(j)")
}

// loop through a block of text

var quote = "I dream of a better tomorrow, where chickens can cross the road and not be questioned about their motives."

var numOfAs = 0

for character in quote.characters {
    if character == "a" {
        numOfAs += 1
    }
}

print("Number of a's: \(numOfAs)")

// Cycle through an Array

let people: [String] = ["Bob", "Fred", "Paul"]

for person in people {
    print(person)
}

// Cycle through a Dictionary

let heroes = ["Superman": "Clark Kent", "Flash": "Barry Allen", "Batman": "Bruce Wayne" ]

for (pubName, sIdent) in heroes {
    print("\(pubName) is \(sIdent)")
}

// while loop

var k = 0

while k <= 10 {
    print(k)
    k += 1
}

// do(repeat) while loop

var l = 0

repeat {
    print(l)
    l += 1
} while l <= 10
