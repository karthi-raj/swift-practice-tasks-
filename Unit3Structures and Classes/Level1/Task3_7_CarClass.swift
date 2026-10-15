import Foundation

// Task 3.7: Car class with accelerate() and brake()

class Task3_7Car {
    var brand: String
    var speed: Int

    init(brand: String, speed: Int = 0) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate() {
        speed += 10
        print("\(brand) accelerated. Current speed: \(speed) km/h")
    }

    func brake() {
        speed -= 10
        if speed < 0 {
            speed = 0
        }
        print("\(brand) braked. Current speed: \(speed) km/h")
    }
}

let car = Task3_7Car(brand: "Toyota")
car.accelerate()
car.accelerate()
car.brake()
