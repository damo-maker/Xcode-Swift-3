//: Playground - noun: a place where people can play

import Cocoa
import Darwin

// Protocols

// Protocols are like interfaces in other languages
// When you adopt a protocol you are saying you agree to define the behaviour that is described their
// When you create attributes inside of a class it automatically allows you to use the dot operator to 'set' as well as 'get' the value from whatever was set inside of their.
// If you want 'getters' and 'setters' by default they are created but if you wanted the getters and setters to be generated you say {get set} inside of curly brackets.
// If you do not want the 'get' to be available you would just use 'set' and vice a versa.
// This is a way of blocking and encapsulating different values from being settable for your variable types to protect them.
// With a protocol you are basically going to define the variables you want set inside of here but you do not initialize them or give them a value inside of protocols
// And you do the same thing with all the functions that you create. You are going to define exactly what is going to be passed inside as well as what is going to be returned. 
// But you are not going to define anything that the function does.
// the variables and methods that you create in the protocol are going to be initialized in the class that you create to inherit from the protocol

protocol Flyable {
    var flies: Bool {get set}
    
    func fly(distMiles: Double) -> String
}

// Create a class that inherits from Flyable protocol
// You can have multiple protocols by just using a comma between them.
// you will get an error if you do not define the attribute(variable) and the function

class Vehicle: Flyable {
    var flies: Bool = false
    var name: String = "No Name"
    
    func fly(distMiles: Double) -> String {
        if(self.flies) {
            return "\(self.name) flies \(distMiles) miles "
        } else {
            return "\(self.name) can't fly"
        }
    }
}

var fordF150 = Vehicle()

fordF150.name = "Ford F-150"
fordF150.flies = false
print(fordF150.fly(distMiles: 10))






















