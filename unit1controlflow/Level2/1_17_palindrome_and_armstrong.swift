// Task 1.17: Check whether a number is a palindrome and whether it is an Armstrong number.
let num = 153
// Palindrome check
let s = String(num)
let isPalindrome = s == String(s.reversed())
print("\(num) is\(isPalindrome ? " " : " not ")a palindrome")

// Armstrong check (for 3-digit numbers generalised)
var original = num
var total = 0
let digits = String(num).count
while original > 0 {
    let d = original % 10
    total += Int(pow(Double(d), Double(digits)))
    original /= 10
}
print("\(num) is\(total == num ? " " : " not ")an Armstrong number")
