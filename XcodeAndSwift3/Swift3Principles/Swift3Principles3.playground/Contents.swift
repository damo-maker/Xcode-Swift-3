//: Playground - noun: a place where people can play

import Cocoa
import Darwin

var str = "Hello, playground"

// functions allow you to reuse and better organize your code

func sayHello(name: String) {
    print("Hello \(name)")
}
sayHello(name: "Derek")

// function to get the sum of two numbers

func getSum(num1: Int = 1, num2: Int = 1) -> Int {
    return num1 + num2
}
print(getSum(num1: 2, num2: 6))

// functions using variatic paremeters – when you do not know how many attributes are being sent in to a function

func getSum2(nums: Int...) -> Int {
    var sum = 0
    
    // cycle through Integer array
    for num in nums {
        sum += num
    }
    return sum
}
print("Sum: \( getSum2(nums: 5, 4, 5, 2, 3, 1))")

// How to affect values outside of a function

var str1 = "happy"
var str2 = "sad"

func makeUpperCase( str1: inout String, str2: inout String) {
    str1 = str1.uppercased()
    str2 = str2.uppercased()
}
makeUpperCase(str1: &str1, str2: &str2)

// Example 2
var cache = [String: String]()

func lowercasedCache(value: String) -> String {
    // Use the dictionary to avoid calling lowercased on a string 2 times.
    let result = cache[value]
    if result != nil {
        print("Cache used")
        return result!
    }
    // Store initial value in cache.
    let lower = value.lowercased()
    cache[value] = lower
    return lower
}

// Use our caching lowercase func.
var test = "VALUE"
print("Lower: " + lowercasedCache(value: test))
print("Lower: " + lowercasedCache(value: test))

// Return multiply values from a function – tuple

func getMult(number: Int) -> (x2: Int, x3: Int) {
    let x2 = number * 2
    let x3 = number * 3
    
    return(x2, x3)
}
var answer = getMult(number: 50)

print(answer.x2)
print(answer.x3)

// Return a Function

func average(nums: Int...) -> Double {
    var sum = 0
    
    for num in nums {
        sum += num
    }
    
    return Double(sum) / Double(nums.count)
}

func sum(nums: Int...) -> Double {
    var sum = 0
    
    for num in nums {
        sum += num
    }
    
    return Double(sum)
}

func doMath(mathOption: String) -> (Int...) -> Double {
    if mathOption == "average" {
        return average
    } else {
        return sum
    }
}

var mathFunc = doMath(mathOption: "average")
print(mathFunc(1,2,3))

// Inner functions - functions inside of a function

func multiplyIt() -> ((Int, Int) -> String) {
    func multiply(num1: Int, num2: Int) -> (String) {
        return "\(num1) + \(num2) = \(num1 + num2)"
    }
    return multiply
}

let getValue = multiplyIt()
print(getValue(5, 3))

