import Foundation

// Task 3.14: Failable initializer for Student

struct Task3_14Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    init?(name: String, rollNumber: Int, marks: Int) {
        if marks < 0 || marks > 100 {
            return nil
        }
        self.name = name
        self.rollNumber = rollNumber
        self.marks = marks
    }
}

if let validStudent = Task3_14Student(name: "Frank", rollNumber: 104, marks: 80) {
    print("Valid student created: \(validStudent.name)")
}

if let invalidStudent = Task3_14Student(name: "George", rollNumber: 105, marks: 150) {
    print("Invalid student created: \(invalidStudent.name)")
} else {
    print("Invalid marks: student not created")
}
