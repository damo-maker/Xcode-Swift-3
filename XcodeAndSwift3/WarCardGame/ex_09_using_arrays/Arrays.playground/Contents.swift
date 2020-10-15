import Cocoa

var myArray: [String] = ["Book", "cat", "dog"]

print(myArray[0])
print(myArray.count)

myArray.insert("dinosaur", at: 0)
print(myArray)
print(myArray.count)
print(myArray[0])

myArray.append("tree")
print(myArray)
myArray += ["elephant", "truck"]
print(myArray)
print(myArray.count)

myArray.remove(at: 1)
print(myArray)

var mySecondArray: [Int] = [Int]()
mySecondArray.append(3)

print(mySecondArray)
print(mySecondArray.count)
print(mySecondArray[0])
