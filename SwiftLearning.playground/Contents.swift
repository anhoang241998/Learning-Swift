import UIKit

// mutable
var bitcoin = "Bitcoin"

// immutable
let cheeseCoin = "CheeseCoin"

print(bitcoin)
print(cheeseCoin)

// Explicit declaration
var name: String = "Tim McGraw"
var age: Int = 25

// Implicit declaration
let totalResult = 32

// Type
/**
 * Int: This is used for integer numbers.
 * Double: This is used to hold numbers with big decimal points.
 * Float: This is used to hold numbers with smaller decimal points.
 * Bool: This represents a Boolean value which is either true or false.
 * String: This is an ordered collection of characters.
 * Character: This is a single-character string literal.
 */

// Operator
/**
 * + to add
 * - to subtract
 * * to multiply
 * / to divide
 * % to modulo
 * = to assign value
 * ex:
 * var b = 10
 * b += 10
 * b -= 10
 */

/**
 * Comparison operators:
 * > greater than
 * < Less than
 * >= greater than and equal
 * <= less than and equal
 * == equal
 * != not equal
 */

/**
 * String
 * Initializing a string
 * var emptyString = ""            // Empty (Mutable) String
 * let stillEmpty = String()       // Another empty String
 * let helloWorld = "Hello World!" // String literal
 
 * let a = String(true)            // from boolean: "true"
 * let b: Character = "A"          // Explicit type to create a Character
 * let c = String(b)               // from character "A"
 * let d = String(3.14)            // from Double "3.14"
 * let e = String(1000)            // from Int "1000"
 * let f = "Result = \(d)"         // Interpolation "Result = 3.14"
 * let g = "\u{2126}"              // Unicode Ohm sign Ω
 */

var emptyString = ""
print("Hello")


/**
 * Multiple line string
 */
var long = """
    This string is
    far too long to
only fit on one line
"""

/**
 * Concatenate string
 */
print(bitcoin + " " + cheeseCoin)

// String interpolation
print("I like \(bitcoin) and \(cheeseCoin)")
print("I bought \(1) \(cheeseCoin) for $\(1 * 10000)")

// String method: check empty
print(cheeseCoin.isEmpty)

// String method: check suffix and prefix
print(cheeseCoin.hasPrefix("c"))
print(cheeseCoin.hasSuffix("d"))

// String method: convert uppercase and lowercase
print(cheeseCoin.uppercased())
print(cheeseCoin.lowercased())

// String method: get first and last character but if first/ last is empty string, it will be need optional or null safety like kotlin
print(cheeseCoin.first ?? "")
print(cheeseCoin.last ?? "")

// String method: random element and shuffle the string
let suits = "abc"
print(suits.randomElement() ?? "")
print(suits.shuffled())

// String method: count the total character
print(cheeseCoin.count)

// String method: check if string contains char
print(cheeseCoin.contains("j"))

// String method: substring tham khao stackoverflow
extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(start, offsetBy: min(self.count - range.lowerBound,
            range.upperBound - range.lowerBound))
        return String(self[start..<end])
    }
    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        return String(self[start...])
    }
}
let s = "hello"
print(s[0..<3]) // "hel"
print(s[3...]) // "lo"

// String method: replace characters in string
print(bitcoin.replacingOccurrences(of: "it", with: "Ghost"))

// String method: sorted alphabet for string
print(bitcoin.sorted())

// String method: split string
print(bitcoin.split(separator: "t"))

// String method: append String with another String
bitcoin.append(" is interesting")
print(bitcoin)

// create for loop
for char in cheeseCoin {
    print("char: \(char)")
}

// create if - else
if bitcoin == cheeseCoin {
    print("I'm not sure why these are the same")
} else {
    print("Good, they are not the same...")
}

// Arrays: are collections of values that are stored as a single value.
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

// create empty array
let value = [Int]()
print(value)

// Arrays method: Access Array Elements
var languages = ["Swift", "Java", "C++"]
print(languages[0])

// Adding elements to array
var numbers = [21, 34, 54, 12]
numbers.append(32)
print(numbers)

// adding 2 arrays together
var primeNumbers = [2, 3, 5]
var evenNumbers = [4, 6, 8]
primeNumbers.append(contentsOf: evenNumbers)

// adding element to array at specific position
var newNumbers = [1, 2, 3, 4]
newNumbers.insert(5, at: 0)
print(newNumbers)

// update element in array
newNumbers[0] = 12
print(newNumbers)

// remove element in array
newNumbers.remove(at: 1)
print(newNumbers)

// Similarly, we can also use
// removeFirst(): remove the first element
// removeLast(): remove the last element
// removeAll(): remove all the elements of an array
// newNumbers.removeFirst()
// newNumbers.removeLast()
// newNumbers.removeAll()

// Array method: sort
newNumbers.sort()
print(newNumbers)

// Array method: reverse
newNumbers.reverse()
print(newNumbers)

// Array method: for each
newNumbers.forEach { (value) -> Void in
    return print(value)
}

// Closure function
let sayHello = { (name: String) -> String in
    return "Hi \(name)"
}

print(sayHello("Taylor"))

func greetUser() {
    print("Hi there!")
}
var greetCopy: () -> Void = greetUser

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

// closure with callback
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// inline closure
let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam1)

// trailing closure
let anotherFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

print(anotherFirstTeam)

// shorthand closure ($0 the first element, $1 the second element). Not recommend just use for 1 para
let shorthandClosure = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

print(shorthandClosure)

let reverseTeam = team.sorted { $0 > $1 }

print(reverseTeam)

// Example: closure
let tOnly = team.filter {
    $0.hasPrefix("T")
}
print(tOnly)

let uppercaseTeam = team.map {
    $0.uppercased()
}

print(uppercaseTeam)

// function accept function as parameter
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

var costToShootMovie = { (location: String) -> Int in
    if location == "UK" {
        return 1_000_000
    } else if location == "US" {
        return 5_000_000
    } else {
        return 500_000
    }
}

costToShootMovie("US")

/**
 * Sets: collections of values just like arrays, but
 * - Items aren’t stored in any order; they are stored in what is effectively a random order.
 * - No item can appear twice in a set; all items must be unique.
 */
let colors = Set(["red", "green", "blue", "red"])
print(colors)

var actors = Set<String>([])

// using insert instead append
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Samual L Jackson")
print(actors)

// Tuples
//var tuple = ("Hello World!", 42, 3.0)
var tuple = (string: "Hello World!", 42, 3.0)

// access the tuple by position
tuple.0 // Hello world
tuple.1 // 42
tuple.2 // 3.0

// access the tuple by name
tuple.string // Hello world

tuple.1 = 43

var anotherTuple = ("Hello World!", 42, 3.0)

print(tuple == anotherTuple) // false

// tuple with function
var quad: (
    name: String,
    amount: Int,
    price: Double,
    function: () -> Void
)

quad = ("First", 1, 1.23, {
    print("Function inside a function")
})

quad.function()

// return with multiple value
func fillMyWallet(name: String, price: Double, amount: Int) -> (name: String, value: Double) {
    return (name, price * Double(amount))
}

let cheeseWallet = fillMyWallet(name: "Cheese", price: 0.002, amount: 5000)
let ghostWallet = fillMyWallet(name: "Ghost", price: 10.002, amount: 1000)
let saladWallet = fillMyWallet(name: "Salad", price: 3.102, amount: 1500)

let myWallet = (cheeseWallet, ghostWallet, saladWallet)

print("name: \(myWallet.2.name) | \(myWallet.2.value)")

// Dictionary
let dic = [
    1: "An",
    2: "23",
    3: "23",
    4: "23",
]
print(dic)

// access dictionary
let value1 = dic[1]

// create empty array, sets and dictionary
let emptyArray = [Int]()
let emptySet = Set<String>()
let emptyDictionary = [String: String]()

// enum
enum Crypto {
    case btc
    case ltc
    case chc
}

print(Crypto.btc)

enum CryptoString: String {
    case btc = "Bitcoin"
    case ltc = "Litecoin"
    case chc = "CheeseCoint"
}

print(CryptoString.chc.rawValue)

enum CryptoParam {
    case btn(amount: Double)
}

print(CryptoParam.btn(amount: 0.003))

enum BashCommand: String {
    case ls = """
    ls -la /Users/Shared
    """
    case mkdir = """
    mkdir /Users/Shared/testDir
    """
}

func runBaseCommand(_ cmd: String) {
    print(cmd)
}

runBaseCommand("ls -la /Users/Shared; pwd; echo test")

func runBaseWithEnum(_ cmd: BashCommand) {
    print(cmd.rawValue)
}

runBaseWithEnum(.ls)

enum Salad {
    enum Vegetable {
        enum Cut {
            case diced
            case chopped
        }
        case tomato
        case cucumber
    }

    enum Dressing {
        case italian
        case oilAndVinegar
    }

    case vegetable(Vegetable, Vegetable.Cut)
    case dressing(Dressing)
}

var salad = [Salad]()

func buildSalad(with ingredient: Salad) {
    switch ingredient {
    case .vegetable(.cucumber, .chopped):
        print("Add chopped cucumber")
    case .vegetable(.cucumber, .diced):
        print("Add diced cucumber")
    case .vegetable(.tomato, _):
        print("Add tomatoes cut any style")
    case.dressing(_):
        print("Just add some dressing")
    }
    salad.append(ingredient)
}

buildSalad(with: .vegetable(.cucumber, .diced))
buildSalad(with: .vegetable(.tomato, .chopped))
buildSalad(with: .dressing(.oilAndVinegar))

for ingredient in salad {
    print(ingredient)
}
