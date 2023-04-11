import Cocoa

// Declaring and initializing an array
let arr = [1, 2, 3, 4, 5]

// Declaring and initializing a dictionary
let dict = ["name": "John", "age": 30] as [String : Any]

// Iterating over an array
for num in arr {
    // Do something with num
    print(num)
}

// Iterating over a dictionary
for (key, value) in dict {
    // Do something with key and value
    print("\(key) \(value)")
}

// Using map to transform an array
let squares = arr.map { $0 * $0 }

// Using filter to select elements from an array
let evens = arr.filter { $0 % 2 == 0 }

// Using reduce to compute a value from an array
let sum = arr.reduce(0) { $0 + $1 }

// Checking if an array contains an element
let containsThree = arr.contains(3)

// Sorting an array
let sortedArr = arr.sorted()

// Reversing an array
let reversedArr = arr.reversed()

// Array to string
let testString = "Hello World"
let stringToArray = Array(testString)
let arrayToString = String(stringToArray)


//For loop:
let j = 5
//using while
var i = 0
while i < j {
    i += 1
}

// using for loop
for i in 0..<j {
    // Do something with i
    print(i)
}
//using stride
// iterates till less than j
for i in stride(from: 0, to: j, by: 1) {
    // Do something with i
    print(i)
}
//iterates till equal to j
for i in stride(from: 0, through: j, by: 1) {
    // Do something with i
    print(i)
}





