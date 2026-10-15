import Foundation

// Task 3.17: Student Management System

enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case d = "D"
    case f = "F"

    static func grade(for marks: Int) -> Grade {
        switch marks {
        case 85...100:
            return .a
        case 70..<85:
            return .b
        case 55..<70:
            return .c
        case 40..<55:
            return .d
        default:
            return .f
        }
    }
}

struct Task3_17Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    func grade() -> Grade {
        return Grade.grade(for: marks)
    }
}

class School {
    var students: [Task3_17Student] = []

    func addStudent(_ student: Task3_17Student) {
        students.append(student)
    }

    func report() {
        let sortedStudents = students.sorted { $0.marks > $1.marks }
        print("Student Report:")
        for student in sortedStudents {
            print("\(student.name) (Roll No: \(student.rollNumber)) - Marks: \(student.marks) - Grade: \(student.grade().rawValue)")
        }
    }
}

let school = School()
school.addStudent(Task3_17Student(name: "Alice", rollNumber: 1, marks: 92))
school.addStudent(Task3_17Student(name: "Bob", rollNumber: 2, marks: 67))
school.addStudent(Task3_17Student(name: "Charlie", rollNumber: 3, marks: 49))
school.addStudent(Task3_17Student(name: "Diana", rollNumber: 4, marks: 85))

school.report()
