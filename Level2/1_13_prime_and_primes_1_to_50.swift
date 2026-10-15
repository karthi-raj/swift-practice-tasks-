// Task 1.13: Check if a number is prime. Then print all primes between 1 and 50.
func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    if n == 2 { return true }
    if n % 2 == 0 { return false }
    var i = 3
    while i * i <= n {
        if n % i == 0 { return false }
        i += 2
    }
    return true
}

print("Is 29 prime? \(isPrime(29))")
print("Primes between 1 and 50:")
for num in 1...50 where isPrime(num) {
    print(num)
}
