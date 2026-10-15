import Foundation

// Task 3.12: Inheritance with Vehicle, Car, Bike

class Vehicle {
    func description() -> String {
        return "Vehicle"
    }
}

class Car: Vehicle {
    override func description() -> String {
        return "Car"
    }
}

class Bike: Vehicle {
    override func description() -> String {
        return "Bike"
    }
}

let vehicles: [Vehicle] = [Car(), Bike(), Vehicle()]

for vehicle in vehicles {
    print(vehicle.description())
}
