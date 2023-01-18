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

// Function
func addTwoNumbers(a: Int, b: Int) -> Int {
    return a + b
}


print(addTwoNumbers(a: 20, b: 30))
