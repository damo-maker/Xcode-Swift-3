import Cocoa
import Darwin

// Enumerator types or Enums
// Enums are a way to structure related values and they are useful when you are working with a limited number of options
// Swift enums are not integer based like other languages and they can store multiple different data types.
// to use those different data types you map an enum to whatever value you want it to be assiciated to.
// you can inialize enums with a default value for whenever you use it.
// you can create functions inside of an enum

enum Color: Int {
    case blue
    case green
    case red
    case purple
    case yellow
    
    init() {
        self = .blue
    }
    
    func getData() -> String {
        switch(self) {
        case .blue: return "Blue"
        case .green: return "Green"
        case .red: return "Red"
        case .purple: return "Purple"
        case .yellow: return "Yellow"
        default: return "Not Found"
            
        }
    }
}

var someColor = Color()
print(someColor.rawValue)

var favColor = Color.purple
print(favColor.rawValue)

if (favColor == Color.purple) {
     print("It's purple")
}

print(favColor.getData())











