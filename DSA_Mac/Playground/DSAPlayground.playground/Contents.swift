import Cocoa

// Declaring and initializing an array
let arr = [1, 2, 3, 4, 5]

// Declaring and initializing a dictionary
let dict = ["name": "John", "age": 30] as [String : Any]

// Iterating over an array
for num in arr {
    // Do something with num
}

// Iterating over a dictionary
for (key, value) in dict {
    // Do something with key and value
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

