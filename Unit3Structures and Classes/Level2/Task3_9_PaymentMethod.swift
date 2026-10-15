import Foundation

// Task 3.9: PaymentMethod with associated values

enum PaymentMethod {
    case cash
    case card(number: String)
    case upi(id: String)
}

func printPaymentDetails(_ method: PaymentMethod) {
    switch method {
    case .cash:
        print("Paid in cash")
    case .card(let number):
        print("Paid with card number: \(number)")
    case .upi(let id):
        print("Paid with UPI ID: \(id)")
    }
}

printPaymentDetails(.cash)
printPaymentDetails(.card(number: "1234 5678 9012 3456"))
printPaymentDetails(.upi(id: "sample@upi"))
