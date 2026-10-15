// Task 1.18: Use switch with ranges and where clauses to categorise a BMI value as underweight, normal, overweight or obese.
let bmi = 27.3
switch bmi {
case ..<18.5:
    print("Underweight")
case 18.5..<25:
    print("Normal weight")
case 25..<30:
    print("Overweight")
default:
    print("Obese")
}
