import Foundation

// Task 3.10: BankAccount with mutating methods

struct BankAccount {
    private(set) var balance: Double

    init(balance: Double = 0.0) {
        self.balance = balance
    }

    mutating func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
        }
    }

    mutating func withdraw(amount: Double) -> Bool {
        if amount <= balance {
            balance -= amount
            return true
        } else {
            print("Insufficient balance. Withdrawal failed.")
            return false
        }
    }
}

var account = BankAccount(balance: 500.0)
account.deposit(amount: 200.0)
print("Balance after deposit: \(account.balance)")
let success = account.withdraw(amount: 300.0)
print("Withdrawal status: \(success)")
print("Balance after withdrawal: \(account.balance)")
