//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class Person {
    // Declare Properties
    
    var Name: String
    var Age: Int
    
    // Initialize    
    
    init() {
        
        self.Name = "Initial Name"
        self.Age = 10
    }
    // Create a Method
    
    func UpdateNameAndAge(nameToSet: String, ageToSet: Int) {
        self.Name = nameToSet
        self.Age = ageToSet
    }
    
    func IncreaseAge(ageToIncreaseBy: Int) -> Int {
        self.Age += ageToIncreaseBy
        
        return self.Age
        
        // nothing will get executed after the return statement in this method
    }
    
    // Class or Type Method
    
    class func AvgAge() -> Int {
        return 50
    }
}

var a = Person()
a.UpdateNameAndAge(nameToSet: "Brad", ageToSet: 15)
print(a.Name)
print(a.Age)

var newAge = a.IncreaseAge(ageToIncreaseBy: 5)
print(newAge)

// Calling a Type Method on a class (Person)
var c = Person.AvgAge()
print(c)










