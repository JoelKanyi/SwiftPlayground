/*
 Variables
 */
var playerName = "Ava"
var isEnabled = false
var age: Int = 24

// Variables without a value
var carSource: Int
var name: String
var isOld: Bool
var temp: Double


/*
 Constant
 */
let year = 2023

// Must be intialized before using it
let temparature: Double


/*
 Operators
 */
// +, -, *, /
// ... closed range operator
// ..< half open range operator

/*
 Converting Data Types
 */
var score = 1
var highScore = 100.0

highScore = Double(score)


/*
 Optionals - type-safe when there might be no value at all
 */
var firstName: String
var middleName: String? // nil
var lastName: String

// Unwraping optionals
var regularInt: Int
var optionalInt: Int?

regularInt = 100
optionalInt = 100

// Check if optionalInt
// if optionalInt != nil {
//     var unwrappedInt = optionalInt!
//     unwrappedInt = unwrappedInt + 12
// }

// optional binding
if let unwrappedInt = optionalInt {
    print(unwrappedInt)
}


/*
 Collections - Array
 */
var nums = [1,2,3,4,5,6,]

// dont have initial value
var myStrings: [String] = []

// access
let initialNum = nums[4]

// change
nums[0] = 40

// add
nums.append(30)

// remove
nums.remove(at: 3)


/*
 Control Flows
 */

// if..else
if score > 30 {
    print("Good")
} else {
    print("Better")
}

// switch
let day: Int = 2

switch day {
case 1:
    print("Monday 👨‍💻")
case 2:
    print("Tuesday 👨‍💻")
case 3:
    print("Wednesday 👨‍💻")
case 4:
    print("Thursday 👨‍💻")
case 5:
    print("Friday 🍻")
case 6:
    print("Satarday 🎬")
case 7:
    print("Sunday 🙏")
default:
    print("Unknown Day 😱")
}

// Loops

// while
while score > 20 {
    
}

// repeat.. while
repeat {
    
} while score > 20

// for loop
for num in nums {
    print(num)
}

for i in 1...10 {
    print(i)
}

// stride
for number in stride(from: 0, to: 255, by: 5) {
    print(number)
}


/*
 String Interpolation
 */
print("You score is \(score * 30)")



// Function
func add(num1 a: Int, num2 b: Int) -> Int {
    return a + b
}

print(add(num1: 20, num2: 30))

// ignoring a value returned by a function (intentionally)
_ = add(num1: 20, num2: 40)

// Get type function
type(of: add(num1: 24, num2: 32))
