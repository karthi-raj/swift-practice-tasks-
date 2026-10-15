import Foundation

// Task 3.5: Rectangle with computed property area

struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rect = Rectangle(width: 5.0, height: 4.0)
print("Area of rectangle = \(rect.area)")
