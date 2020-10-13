//: Playground - noun: a place where people can play

import Cocoa
import Foundation

// Parent class called Person

class Person {
    
    var Name: String = "Initial Name"              // Property
    
    init() {                                       // init Method to initialize the class
        
    }
    
    func Walk() {                                  // Method
        print("I'm walking")
    }
}

var a = Person()
a.Name = "Alice"
print(a.Name)
a.Walk()

// Declare a subclass of Person

class SuperHuman: Person {
    
    var AlterEgoName: String = "Clark"             // a new Property
    
    override init() {                              // Override Parent init Method
        
        super.init()                               // Use super
        
        super.Name = "Super Duper"
        
        super.Name
    }
    
    func Fly() {                                   // a new Method (different to Parent)
        print("I'm flying")
    }
    
    override func Walk() {                         // Override Parent Method
        print("I'm walking really fast")
        
        super.Walk()                               // Use super to call the Method
    }
    
}

var b = SuperHuman()
print(b.Name)
b.Walk()
b.Fly()
print(b.AlterEgoName)




