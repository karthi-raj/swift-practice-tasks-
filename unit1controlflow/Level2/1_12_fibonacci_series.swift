// Task 1.12: Print the Fibonacci series up to n terms.
let terms = 10
var aFib = 0
var bFib = 1
if terms >= 1 { print(aFib) }
if terms >= 2 { print(bFib) }
if terms > 2 {
    for _ in 3...terms {
        let c = aFib + bFib
        print(c)
        aFib = bFib
        bFib = c
    }
}
