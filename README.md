# Learning Swift

---

## Variables

To declare a variable that its value can change over time, use the `var` keyword:

```Swift
var name = "An"
name = "Tuan"
```

But, to declare a variable that can be set value once and never change it, we use `let` keyword:

```Swift
let taylor = "swift"
```

## Data Type

**1. Integer**  
To hold a whole number, Swift assigns the type `Int` - short for "integer".

```Swift
var population = 8_000_000
var age = 38
```

**2. Double**  
"Double" holds fractional values such as 38.1, or 3.141592654. And it can hold a big number.

```Swift
var pi = 3.141
```

**3. Float**  
"Double" holds fractional values. But it just can hold a small number.

```Swift
var floatNum = 1.2
```

**4. Bool**  
Boolean can just hold either true or false:

```Swift
var awesome = true
```

**5. String**  
String is an ordered collection of characters.

```Swift
var name = "An"
```

**6. Character**  
This holds a single-character string literal

```Swift
var letterA = "A"
```

## String method

**1. Initialize a string**  
To declare a string:

```Swift
var string = "hello"
```

To initialize an empty string:

```Swift
var emptyString = String()
var emptyString2 = ""
```

To cast another type to String, we use String constructor:

```Swift
let a = String(3.12)
let b = String(1000)
```

To add a unicode to string

```Swift
var unicode = "\u{2126}"  // Unicode Ohm sign Ω
```

**2. Multiple line string**  
To create a multiple line string:

```Swift
var multipleLine = """
    This string is
    far too long to
    only fit on one line
"""
```

**3. Concatenate string**  
To concat a string with another string, we can use:

```Swift
let string1 = "hello"
let string2 = "world"
let sayHello = string1 + " " + string2
```

Or we can user string interpolation:

```Swift
let name = "Linh"
let string = "I like \(name)"
```

Or we can append a new string:

```Swift
let stringA = "Hello"
stringA.append(" world")
print(stringA)
```

**4. String method: Check empty String**  
This method will return a boolean value indicating whether a string has no character

```Swift
var emptyString = ""
print(emptyString.isEmpty) // true
```

**5. String method: check suffix and prefix**  
This method will return a boolean value indicating whether a string has suffix or prefix character:

```Swift
let randomString = "+helloA"
print(randomString.hasPrefix("A")) // false
print(randomString.hasSuffix("A")) // true
```

**6. String method: Uppercase and Lowercase**  
Returns an uppercase version of the string.

```Swift
let cafe = "Café 🍵"
print(cafe.uppercased())
print(cafe.lowercased())
```

**7. String method: Get first or last character of string**  
Return a first character or last character of a string, if a string is empty, it will return `nil` but we can use `Optionals` to declare a default value if it is `nil` value:

```Swift
let letter = "Hello"
print(letter.first ?? "empty first character")
print(letter.last ?? "empty last character")
```

**8. String method: total character**  
Return a total characters in a string:

```Swift
let string = "Hello"
print(string.count)
```

**9. String method: Contains a character**  
Returns true if other is non-empty and contained within self by case-sensitive, non-literal search. Otherwise, returns false.

```Swift
let string = "Hello"
print(string.contains("j")) // false
```

**10. String method: substring**
Tham khao StackOverflow:  
First, create extension for String:

```Swift
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
```

Usage:

```Swift
let s = "Hello"
print(s[0..3]) // "Hel"
```

**11. String method: replace a character**  
Returns a new string in which all occurrences of a target string in a specified range of the string are replaced by another given string.

```Swift
let string = "it"
print(string.replacingOccurrences(of: "it", with: "Ghost"))
```

**12. String method: split string**  
Returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

```Swift
let line = "BLANCHE:   I don't want realism. I want magic!"
print(line.split(separator: " "))
// "["BLANCHE:", "I", "don\'t", "want", "realism.", "I", "want", "magic!"]"
```
