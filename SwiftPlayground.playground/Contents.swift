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


/*
 Enumerations, Structs, Dictionries, Tuples
 */

// Enums
enum MediaType {
    case book, movie, music, game
}

var itemName: String // e.g "Starwars"
var releaseYear: Int // e.g 2004
var itemType: MediaType // e.g book, movie, game

itemType = MediaType.movie
itemType = .game

switch itemType {
case .game:
    print("I have been playing games")
case .music:
    print("I have been listening to music")
case .movie:
    print("I have been watching movies")
case .book:
    print("I have been reading books")
}

// Enums: Raw Values
enum BottleSize: String {
    case half = "37.5l"
    case full = "50.5l"
}


var myBottle: BottleSize = .half
print("\(myBottle.rawValue)")

// Enum: Associated Values
enum Music {
    case gospel(String)
    case drills(Int)
    case bongo(String)
}

var itemOne: Music = .bongo("Diamond Platnumz")
var itemTwo: Music = .gospel("Sammy K")



// Structs --> Value type not refrence type
struct Movie {
    // properties
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String
    
    // methods
    func summary() -> String {
        return "\(title) directed by \(director) is a \(genre) release in \(releaseYear)"
    }
}

var firstMovie = Movie(title: "The Rain", director: "Joel K.", releaseYear: 2019, genre: "Sci-fi")

print(firstMovie.title)

print(firstMovie.summary())



// Dictionaries
var airlines = [
    "KQ": "Kenya Airways",
    "RA": "Rwanda Airline"
]

// lookup
if let result = airlines["KQ"] {
    print(result)
} else {
    print("No value found")
}

// add or change
airlines["RA"] = "Rwanda Express"
airlines["QA"] = "Qatar Airline"

// remove
airlines["KQ"] = nil

// iterate through
for (_, value) in airlines {
    print(value)
}


// Tuples - Grooup things together
var numberOfCows = 10
var overEighteenYears = true
var todaysTemp = "23.4f"

var basicTuple = (numberOfCows, overEighteenYears, todaysTemp)

var nextTuple = ("Joel", true, 23434, todaysTemp)


func randomAlbum() -> (title: String,  year :Int) {
    var title = "Premium tears"
    var releaseYear = 2018
    
    return (title, releaseYear)
}

var tupleResult = randomAlbum()
print(tupleResult.title)

let (nextTitle, length) = randomAlbum()
print("Playing next: \(nextTitle) which was release in \(length)")


/*
 Clusures - let us take lines of code and group it together to use elsewhere in our program
 */
struct Book {
    var title: String
    var pages: Int
}

let book1 = Book(title: "Hobit", pages: 200)
let book2 = Book(title: "Lord of the Rings", pages: 100)
let book3 = Book(title: "Avatar", pages: 50)

let allBooks = [book1, book2, book3]

let pagesSortedBooks = allBooks.sorted { $0.pages <= $1.pages }
let titleSortedBooks = allBooks.sorted { $0.title <= $1.title }
let booksWithLessThan50pages = allBooks.filter { $0.pages < 100 }


/*
 Classes & Objects
 */
class Appliance {
    // properties
    var manufacturer: String
    var manufactureDate: String
    var model: String
    var voltage: Int = 0
    var capacity: Int?
    
    // initializer
    init() {
        self.manufactureDate = "default manufacture date"
        self.model = "default model"
        self.manufacturer = "default manufacturer"
        self.voltage = 0
    }
    
    init(voltage: Int) {
        self.manufactureDate = "default manufacture date"
        self.model = "default model"
        self.manufacturer = "default manufacturer"
        self.voltage = voltage
    }
    
    // deintializer
    deinit {
        
    }
    
    
    // methods
    final func getDetails() -> String {
        var message = "\(manufacturer) manufactured a very cool \(model) on \(manufactureDate)"
        
        return message
    }
}

// Instances
var kettle = Appliance()
var heater = Appliance(voltage: 30)


// Inheritance
class Toaster : Appliance {
//    var you: String
//    override init(){
//        self.you = "You"
//    }
    
    func toast(){
        
    }
}

// Extensions
let nName = "joel kanyi"
nName.uppercased()

extension String {
    func removeSpaces() -> String {
        let filteredCharacters = self.filter { $0 != " "}
        return String(filteredCharacters)
    }
}

print(nName.removeSpaces())


// Computed Properties
var myScore: Int {
    return 20
}


/*
 Protocols
 */
class Cow: CustomStringConvertible {
    var description: String {
        return "hello adopted protocol"
    }
}

protocol MyProtocol {
    func sayHello()
}

class Proto : MyProtocol {
    func sayHello() {
        print("Hello")
    }
}


// Error Handling
enum ServerError {
    case noConnection
    case serverNotFound
    case authenticationRefused
}

func checkStatus(errorCode: Int) -> String {
    
    switch errorCode {
    case 1:
        print("You have no connection")
    case 2:
        print("Server not found")
    case 3:
        print("Authentication failed")
    default:
        print("Unknown Error Code")
    }
    return "Success!"
}

let result = checkStatus(errorCode: 1)
print(result)


// handling...
do {
    let result = try checkStatus(errorCode: 30)
    print(result)
} catch ServerError.noConnection {
    print("No connection")
} catch ServerError.serverNotFound {
    print("Server Not Found")
} catch {
    print("The problem is : \(error)")
}

// Guard and Defer
//guard let unwrappedName = nName else {
//    result
//}

