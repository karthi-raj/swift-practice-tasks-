import Foundation

// Task 3.2: Enum with raw values

enum Weekday: Int {
    case monday = 1
    case tuesday = 2
    case wednesday = 3
    case thursday = 4
    case friday = 5
    case saturday = 6
    case sunday = 7
}

let today = Weekday.friday
print("Today is \(today) and raw value is \(today.rawValue)")

if let day = Weekday(rawValue: 3) {
    print("Raw value 3 converts to \(day)")
} else {
    print("No weekday found for raw value 3")
}
