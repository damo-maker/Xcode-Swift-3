//: Playground - noun: a place where people can play

import Foundation
import Cocoa

class Person {
    // Property
    var Name: String = "Initial Name"
    
    init () {
        print("New person initialized")
        self.sayCheese()
    }
    // method
    func sayCheese () {
        print("Cheese")
    }
    
}
var b = Person()    // outputs "New person initialized"
b.sayCheese()       // outputs "Cheese"

var firstPerson = Person()   // outputs "New person initialized"

print(firstPerson.Name)      // outputs "Initial Name"
firstPerson.Name = "Alice"
print(firstPerson.Name)      // outputs "Alice"

var secondPerson = Person()  // outputs "New person initialized"

secondPerson.Name = "Bob"
print(secondPerson.Name)     // outputs "Bob"
print(firstPerson.Name)      // outputs "Alice"
