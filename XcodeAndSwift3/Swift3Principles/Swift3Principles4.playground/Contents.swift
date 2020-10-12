//: Playground - noun: a place where people can play

import Cocoa

// Closures - self contained code just like a function
// They differ because they can be anonymous and have no name
// Functions have to have a name

// Basic layout of a closure

/* { (param: paramType, param2: paramType) -> returnType in
    statements
    return value
} */

// Create a closure that accepts and then returns an Integer

var square: (Int) -> (Int) = { num in
    return num * num
}

print(square(15))

// You can assign a closure to a variable 

var squareCopy = square

print(squareCopy(15))

// Create a closure that does not receive any attribues and does not return any values

var sayGoodbye: () -> () = {
    print("Goodbye")
}

sayGoodbye()

// Create a closure that has no attributes but does return a value

var sayHappy: () -> (String) = {
    "Happy Birthday"
}

print(sayHappy())

// A Closure is able to reference variables that are outside of it
// You cannot do this with a function

var num3 = 3

var incrementNum = {
    print("num3 : \(5 + num3)")
}

incrementNum()

// Create an array and use the map method that comes with an array, and it will accept a closure that is going to perform an action on every item inside of the array

let numsToSquare = [1,2,3,4,5,6]

let squaredNums = numsToSquare.map {
    (num: Int) -> String in
    "\(num * num)"
}

print(squaredNums)


















