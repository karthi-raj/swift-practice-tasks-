// Task 1.9: Find the largest of three numbers using nested if.
let x = 12
let y = 7
let z = 12
var largest = x
if y > largest {
    largest = y
}
if z > largest {
    largest = z
}
print("Largest is \(largest)")
