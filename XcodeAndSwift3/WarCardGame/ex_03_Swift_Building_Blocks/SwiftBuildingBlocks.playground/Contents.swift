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

var firstPerson = Person()

print(firstPerson.Name)
firstPerson.Name = "Alice"
print(firstPerson.Name)

var secondPerson = Person()

secondPerson.Name = "Bob"
print(secondPerson.Name)
print(firstPerson.Name)
