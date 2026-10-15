// Task 1.14: Build a simple calculator: given two numbers and an operator (+ - * /), use switch to compute the result. Handle division by zero.
let lhs = 10.0
let rhs = 0.0
let op: Character = "/"

switch op {
case "+": print("Result: \(lhs + rhs)")
case "-": print("Result: \(lhs - rhs)")
case "*": print("Result: \(lhs * rhs)")
case "/":
    if rhs == 0 {
        print("Error: Division by zero")
    } else {
        print("Result: \(lhs / rhs)")
    }
default:
    print("Unknown operator")
}
