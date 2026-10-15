import Foundation

// Task 3.11: Demonstrate value vs reference types

struct Task3_11StudentStruct {
    var marks: Int
}

class Task3_11StudentClass {
    var marks: Int
    init(marks: Int) {
        self.marks = marks
    }
}

var structCopy = Task3_11StudentStruct(marks: 70)
var structOriginal = structCopy
structCopy.marks = 90
print("Struct value type: original = \(structOriginal.marks), copy = \(structCopy.marks)")

var classCopy = Task3_11StudentClass(marks: 70)
var classOriginal = classCopy
classCopy.marks = 90
print("Class reference type: original = \(classOriginal.marks), copy = \(classCopy.marks)")

// Explanation:
// Structs are value types, so copying creates a separate copy.
// Classes are reference types, so both variables point to the same object.
