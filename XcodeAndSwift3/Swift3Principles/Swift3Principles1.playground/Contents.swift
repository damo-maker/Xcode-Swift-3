// comment
import UIKit
var str = "Hello Playground"
var str2 = "Hello Playground2"

let pi = 3.141592

print("pi is equal to \(pi)")

let numberOfSteps: Int = 450

let maxInt: Int
maxInt = 9223372036854775807

let maxUnsignedInt: UInt64 = UInt64.max

print(maxUnsignedInt)

print("Max Float: \(FLT_MAX)")

print("Max Double: \(DBL_MAX)")

// Floats are precise up to 6 digits
let floatPrecision: Float = 1.999999 + 0.0000005
print("Float Precision: ", floatPrecision)

// Doubles are precise up to 15 digits
let doublePrecision: Double = 1.99999999999999 + 0.000000000000005
print("Double Precision: ", doublePrecision)

let isOver18 = true

let myName = "Derek"

var statement = "My name is " + myName

statement = statement + "!"

print(statement)

// Casting - converting one datatype into another datatype

// Cast a Float into an Integer
print("I'm an Int now \(Int(floatPrecision))")
// Then convert an Integer into a Float
print("I'm a Float now \(Float(maxInt))")
// Convert into a Boolean
print("I'm a Bool now \(Bool(maxInt as NSNumber))")

// Turn a String into an Integer
let myAge = "6.25"
let myAgeInt = Int(myAge)

// Convert a String into a Float
let myAgeFloat = (myAge as NSString).floatValue

// Math Functions

print("5 + 3 = \(5 + 3)")
print("5 - 3 = \(5 - 3)")
print("5 * 3 = \(5 * 3)")
print("5 / 3 = \(5 / 3)")
print("5.3 % 3 = \(5.3.truncatingRemainder(dividingBy: 3))")
var num: Int = 1

print("num+= = \(num + 1)")
print("+=num = \(1 + num)")

num += 5
print("num += 5 \(num)")

num -= 5
print("num -= 5 \(num)")

num *= 5
print("num *= 5 \(num)")

num /= 5
print("num /= 5 \(num)")

num %= 5
print("num %= 5 \(num)")

// Generate a Random Number between 0 and not including 11(i.e between 0 and 10)
print("Rand Num: \(arc4random() % 11)")

// Conditional Operators > < >= <= == !=

// Logical Operators && || !

let age: Int = 13

if age < 16 {
    print("You can go to school")
} else if (age >= 16) && (age < 18){
    print("You can drive")
} else {
    print("You can vote")
}

if age < 14 || age > 67 {
    print("You shouldn't work")
}

print("!true = \(!true)")

// the Ternery Operator – you have a condition then assign a value based off of whether the condition is either true or false
var isLegalToVote: Bool = (age > 18) ? true: false
// doesn't have to be a Boolean. E.g could be an Integer
var isLegalToVote1: Int = (age > 18) ? 12: 18

// the Switch statement is another way of testing for conditions

let ingredients = "pinto beans"
switch ingredients {
case "pasta", "tomato":
    print("How about spagetti")
    fallthrough
case "potato":
    print("How about a baked potato")
case "pinto beans":
    print("How about a burrito")
default:
    print("A glass of water would be nice")
}

let testScore = 89
switch testScore {
case 93...100:
    print("You got an A")
case 85...92:
    print("You got a B")
default:
    print("You got an F")
}
