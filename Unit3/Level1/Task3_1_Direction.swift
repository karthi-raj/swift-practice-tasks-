import Foundation

// Task 3.1: Direction enum with switch

enum Direction {
    case north, south, east, west
}

func printDirectionMessage(_ direction: Direction) {
    switch direction {
    case .north:
        print("Move north")
    case .south:
        print("Move south")
    case .east:
        print("Move east")
    case .west:
        print("Move west")
    }
}

printDirectionMessage(.north)
printDirectionMessage(.east)
printDirectionMessage(.south)
printDirectionMessage(.west)
