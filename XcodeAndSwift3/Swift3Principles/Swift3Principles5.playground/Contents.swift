//: Playground - noun: a place where people can play

import Cocoa

// A struct is a custom data type
// used when you do not need to inherit, unlike a class which inherits
// used when you want to model simple data structures
// you can put methods(functions) inside of a struct

// This is the basic way you can interact with the value stored inside of a struct and also call the functions inside of a struct
// Computed Properties return a value as opposed to storing a value

struct Runner {
    var name: String
    var milePace: Double
    
    func displayMP() -> String {
        let absPace = Int(self.milePace)                   //absolute pace
        let prctMin = self.milePace - Double(absPace)      //percentage in minutes
        let seconds  = prctMin * 60
        
        return "\(absPace) min : \(seconds) sec"
    }
    // Computed Value
    var marathonTime: Double {
        get {
            return (milePace * 26.2) / 60
        }
    }
    
    static let marathonDist = 26.2
}

let dennisKimetto = Runner(name: "Denis Kimetto", milePace: 4.68)
let emmanuelMutai = Runner(name: "Emmanuel Mutai", milePace: 4.7)

print("\(dennisKimetto.name) : \(dennisKimetto.displayMP())")
print("\(emmanuelMutai.name) : \(emmanuelMutai.displayMP())")
print("Time to finish marathon: \(dennisKimetto.marathonTime)hours")
print("Marathon: \(Runner.marathonDist)")

// Classes - trying to model real world things(objects) into a computer programming language

class Animal {
    var name: String = "No Name"
    var height: Double = 0.0
    var weight: Double = 0.0
    var sound: String = "No Sound"
    
    // Define a function that is called everytime you create an animal object and this is called init
    // there is a default init if nothing has been passed inside of it. You need to define all the different data types
    // if you want to assign a value to an object you use self because you do not know the name of the object outside of here. 
    // the class gets created before any objects so there is no way of knowing the name. Self is going to store the value for each object that you create.
    // You create different attributes (objects) for the class (Animal)
    
    // first you initialize your Animal objects.
    init(name: String, height: Double, weight: Double, sound: String ) {
        self.name = name
        self.height = height
        self.weight = weight
        self.sound = sound
    }
    // Every object has things that it can do. You do this by creating different functions (methods) for all the things your object can do.
    func getInfo() {
        print("\(self.name) is \(self.height) cms tall and weighs \(self.weight) kgs and likes to say \(self.sound)")
    }
    
    // Overloading – two function with exactly the same name but overloading allows you to use different types of numbers or attributes in each function. No"te: the data type has to be different in each function
    func getSum(num1: Int, num2: Int) -> Int {
        print("Rover is so clever, he counts up to \(num1 + num2) Integer Ruffs")
        return num1 + num2
    }
    
    func getSum(num1: Double, num2: Double) -> Double {
        print("Rover is so clever, he counts up to \(num1 + num2) Double Woolfs")
        return num1 + num2
    }
}

    // create an instance of an animal object
    var rover = Animal(name: "Rover", height: 38, weight: 12.7, sound: "Ruff")
    
    // call getInfo on var rover
    rover.getInfo()
    rover.getSum(num1: 2, num2: 2)
    rover.getSum(num1: 3.4, num2: 2.2)

    // Inheritance - create another class or object that is going to inherit from Animal
    // Dog inherits all the attributes and methods of Animal
    // Dog can either override methods inside of Animal or create brand new methods
    // If you do not want a function to be overrideable by another class that might try to inherit from them. 
    // e.g. only one way to dig holes use the keyword final infront of the func

class Dog: Animal {
    final func digHole() {
        print("\(self.name) digs a hole")
    }
    
    // override a function in the super class or Animal class, use the override keyword.
    // if you want the code to still execute inside of the super class you call it using super keyword. Will automatically execute everything inside of getInfo function.
    // you can add additional information
    override func getInfo() {
        super.getInfo()
        print("and dig holes")
    }
}

// this allows you to create another object that is going to be a Dog but also an Animal.
var spot = Dog(name: "Spot", height: 38, weight: 12.7, sound: "Woof")

// spot also inherits the init function from the Animal class
spot.getInfo()
spot.digHole()

// You can pass any of these different class types, whether it is a Dog or an Animal, into a function and it is automatically going to call the correct function to execute

func printGetInfo(animal: Animal) {
    animal.getInfo()
}

printGetInfo(animal: rover)
printGetInfo(animal: spot)

// You can set and get the different values using a . operator

spot.name = "Doug"

// test the override methods

print("2 + 5 = \(spot.getSum(num1: 2, num2: 5))")
print("2.2 + 5.6 = \(spot.getSum(num1: 2.2, num2: 5.6))")

// Check the class type

// Spot is both an Animal as well as a Dog due to inheritance
// the Dog is the Animal but the Animal is not necessarily a Dog because Animal does not inherit from Dog

print("Is Spot a Dog: \(spot is Animal)")
print("Is Spot a Dog: \(spot is Dog)")
print("Is Spot a Dog: \(rover is Dog)")







