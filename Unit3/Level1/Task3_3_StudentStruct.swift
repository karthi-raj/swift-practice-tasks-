import Foundation

// Task 3.3: Student struct

struct Task3_3Student {
    var name: String
    var rollNumber: Int
    var marks: Int
}

let student1 = Task3_3Student(name: "Alice", rollNumber: 101, marks: 78)
let student2 = Task3_3Student(name: "Bob", rollNumber: 102, marks: 88)

print("Student 1: \(student1.name), Roll No: \(student1.rollNumber), Marks: \(student1.marks)")
print("Student 2: \(student2.name), Roll No: \(student2.rollNumber), Marks: \(student2.marks)")
