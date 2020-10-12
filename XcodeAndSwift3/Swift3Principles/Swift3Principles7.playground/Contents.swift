//: Playground - noun: a place where people can play

import Cocoa
import Darwin

// Extensions

// Extensions provide a way to add functionality without overriding existing functionality and this can be applied to your own objects as well as even Doubles, Strings, arrays

// You want to output a String as an Array

extension String {
    var asArray: [Character] {
        var result = [Character]()
        
        for char in self.characters {
            result.append(char)
        }
        return result
    }
    // how often a letter appears
    func letterOccurence(theChar: Character) -> Int {
        var numOfChars = 0
        
        for letter in self.characters {
            if letter == theChar {
                numOfChars += 1
            }
        }
        return numOfChars
    }
 }
// Calling the extension
var characters = "A random string".asArray

print(characters)

var numOfAs: Int = "a random string".letterOccurence(theChar: "a")

print("Number of a's : \(numOfAs)")


// Generics

// allow you to avoid repetitive code that is mainly going to exist because of type requirements

/* func printAnyArray<T>(anything: [T]) {
    for element in anything {
        print("\(element), ")
    }
}

printAnyArray(["Paul", "Jake"])
printAnyArray([1,2,3]) */

func printAnySeq<T: Sequence>(anything: T) {
    for element in anything {
        print("\(element), ")
    }
}

printAnySeq(anything: ["Paul", "Jake"])
printAnySeq(anything: [1,2,3])
//printAnySeq("A random String")    this does not work in Swift 2

// Can also test for 'equality' and 'equatable' is going to provide that functionality
// Test for equlity of data type so long as they are of the same data type

func areTheyEqual<T: Equatable>(val1: T, val2: T) -> Bool {
    return val1 == val2
}
// print(areTheyEqual("a", "b")) This does not work in Swift 2

// Comparables - very similar to Equatables

func compareThem<T: Comparable>(val1: T, val2: T) -> Bool {
    return val1 < val2
}
// print(compareThem("a", "b"))  This does not work in Swift 2



















