//: Playground - noun: a place where people can play

import Cocoa

// standard variable
var str1:String = "Example"
str1.replacingOccurrences(of: "Ex", with: "S")  //Swift 5 method

// optional (?) variable
var str2:String? = nil
str2?.replacingOccurrences(of: "Ex", with: "S") // standard unwrap

// implicitly unwrapped optional (!) variable
var str3:String! = "Example"
str3.replacingOccurrences(of: "Ex", with: "S")


