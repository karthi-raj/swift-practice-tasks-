import Foundation

// Task 3.4: isPassed() method

struct Task3_4Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    func isPassed() -> Bool {
        return marks >= 40
    }
}

let student = Task3_4Student(name: "Charlie", rollNumber: 103, marks: 67)
print("Student \(student.name) passed? \(student.isPassed())")
