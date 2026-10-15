import Foundation

// Task 3.6: Person class with init and introduce method

class Task3_6Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

let person = Task3_6Person(name: "Diana", age: 25)
person.introduce()
