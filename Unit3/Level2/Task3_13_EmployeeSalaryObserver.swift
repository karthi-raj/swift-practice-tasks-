import Foundation

// Task 3.13: Property observer with didSet

class Employee {
    var name: String
    var salary: Double {
        didSet {
            print("Salary changed for \(name): \(oldValue) -> \(salary)")
        }
    }

    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
}

let employee = Employee(name: "Emma", salary: 30000)
employee.salary = 35000
employee.salary = 40000
