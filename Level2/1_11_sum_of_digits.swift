// Task 1.11: Calculate the sum of digits of a number using a while loop.
var value = 1234
var sum = 0
var temp = value
while temp > 0 {
    sum += temp % 10
    temp /= 10
}
print("Sum of digits of \(value) is \(sum)")
