import Foundation

// Task 3.16: Static methods and instance counter

struct MathHelper {
    static func square(_ number: Int) -> Int {
        return number * number
    }
}

class Counter {
    static var instanceCount = 0

    init() {
        Counter.instanceCount += 1
    }
}

print("Square of 7 is \(MathHelper.square(7))")
let c1 = Counter()
let c2 = Counter()
print("Total instances created: \(Counter.instanceCount)")
