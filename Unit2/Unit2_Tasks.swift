import Foundation

// Unit 2: Arrays, Sets and Dictionaries
// Solutions for tasks 2.1 — 2.18. Run this file to print results for each task.

func task_2_1() {
    print("\n--- Task 2.1 ---")
    let nums = [10, 20, 30, 40, 50]
    print("Array:", nums)
    print("Count:", nums.count)
    if let first = nums.first, let last = nums.last {
        print("First:", first, "Last:", last)
    }
}

func task_2_2() {
    print("\n--- Task 2.2 ---")
    var fruits = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
    print("Start:", fruits)

    fruits.append("Fig")
    print("After append:", fruits)

    fruits.insert("Apricot", at: 0)
    print("After insert at 0:", fruits)

    // remove one (remove at index 2 for demonstration)
    let removed = fruits.remove(at: 2)
    print("Removed (at index 2):", removed)
    print("After remove:", fruits)
}

func task_2_3() {
    print("\n--- Task 2.3 ---")
    let numbers = [3, 6, 9, 12, 15]
    var sum = 0
    for n in numbers {
        sum += n
    }
    let average = Double(sum) / Double(numbers.count)
    print("Numbers:", numbers)
    print("Sum:", sum)
    print("Average:", average)
}

func task_2_4() {
    print("\n--- Task 2.4 ---")
    let nums = [42, 7, 19, 100, -3, 42]
    var currentMax = nums[0]
    var currentMin = nums[0]
    for n in nums {
        if n > currentMax { currentMax = n }
        if n < currentMin { currentMin = n }
    }
    print("Array:", nums)
    print("Max (manual):", currentMax)
    print("Min (manual):", currentMin)
}

func task_2_5() {
    print("\n--- Task 2.5 ---")
    let numbersWithDup = [1, 2, 2, 3, 3, 3, 4, 1]
    let s = Set(numbersWithDup)
    print("Original array:", numbersWithDup)
    print("Set (duplicates removed):", s)
}

func task_2_6_and_2_7() {
    print("\n--- Task 2.6 & 2.7 ---")
    let students: [String: Int] = [
        "Alice": 88,
        "Bob": 75,
        "Charlie": 92,
        "Diana": 81,
        "Evan": 95
    ]
    print("Students dictionary:", students)
    print("Iterating keys and values:")
    for (name, mark) in students {
        print("\(name) -> \(mark)")
    }

    // Lookup example
    let lookupName = "Charlie"
    if let mark = students[lookupName] {
        print("\nLookup: \(lookupName) -> \(mark)")
    } else {
        print("Lookup: \(lookupName) -> Not found")
    }

    let missing = "Frank"
    if let mark = students[missing] {
        print("Lookup: \(missing) -> \(mark)")
    } else {
        print("Lookup: \(missing) -> Not found")
    }
}

func task_2_8() {
    print("\n--- Task 2.8 ---")
    let arr = [5, 10, 15, 20]
    let check = 15
    print("Array:", arr)
    print("Contains \(check)?", arr.contains(check))
}

func task_2_9() {
    print("\n--- Task 2.9 ---")
    let original = [1, 2, 3, 4, 5]
    var reversed: [Int] = []
    for i in stride(from: original.count - 1, through: 0, by: -1) {
        reversed.append(original[i])
    }
    print("Original:", original)
    print("Reversed (manual):", reversed)
}

func task_2_10() {
    print("\n--- Task 2.10 ---")
    let arr = [1, 3, 2, 3, 4, 1, 5, 2]
    var seen = Set<Int>()
    var result: [Int] = []
    for x in arr {
        if !seen.contains(x) {
            result.append(x)
            seen.insert(x)
        }
    }
    print("Original:", arr)
    print("Without duplicates (preserve order):", result)
}

func task_2_11() {
    print("\n--- Task 2.11 ---")
    let sumOfSquaresOfEvens = (1...20)
        .filter { $0 % 2 == 0 }
        .map { $0 * $0 }
        .reduce(0, +)
    print("Sum of squares of even numbers from 1..20:", sumOfSquaresOfEvens)
}

func task_2_12() {
    print("\n--- Task 2.12 ---")
    let a: Set = [1, 2, 3, 4]
    let b: Set = [3, 4, 5, 6]
    print("A:", a)
    print("B:", b)
    print("Union:", a.union(b))
    print("Intersection:", a.intersection(b))
    print("A subtracting B:", a.subtracting(b))
    print("Symmetric difference:", a.symmetricDifference(b))
}

func task_2_13() {
    print("\n--- Task 2.13 ---")
    let sentence = "to be or not to be"
    let tokens = sentence
        .lowercased()
        .components(separatedBy: CharacterSet.alphanumerics.inverted)
        .filter { !$0.isEmpty }

    var freq: [String: Int] = [:]
    for word in tokens {
        freq[word, default: 0] += 1
    }
    print("Sentence:\n\(sentence)")
    print("Frequencies:\n\(freq)")
}

func task_2_14() {
    print("\n--- Task 2.14 ---")
    let students: [String: Int] = [
        "Alice": 88,
        "Bob": 75,
        "Charlie": 92,
        "Diana": 81,
        "Evan": 95
    ]
    let sortedDesc = students.sorted { $0.value > $1.value }
    print("Students sorted by mark (desc):")
    for (name, mark) in sortedDesc {
        print("\(name): \(mark)")
    }
    print("Top 3:")
    for (name, mark) in sortedDesc.prefix(3) {
        print("\(name): \(mark)")
    }
}

func task_2_15() {
    print("\n--- Task 2.15 ---")
    let arr = [5, 3, 9, 1, 9, 7]
    var largest: Int? = nil
    var secondLargest: Int? = nil
    for n in arr {
        if largest == nil || n > largest! {
            secondLargest = largest
            largest = n
        } else if n != largest && (secondLargest == nil || n > secondLargest!) {
            secondLargest = n
        }
    }
    print("Array:", arr)
    if let s = secondLargest {
        print("Second largest element:", s)
    } else {
        print("Second largest not found (not enough distinct elements)")
    }
}

func task_2_16() {
    print("\n--- Task 2.16 ---")
    let matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]
    print("Matrix (row by row):")
    for row in matrix {
        print(row)
    }
    let diagonalSum = matrix[0][0] + matrix[1][1] + matrix[2][2]
    print("Sum of main diagonal:", diagonalSum)
}

func task_2_17() {
    print("\n--- Task 2.17 ---")
    let names = ["Alice", "Adam", "Bob", "Bella", "Charlie", "Carmen"]
    var groups: [Character: [String]] = [:]
    for name in names {
        if let first = name.first {
            groups[first, default: []].append(name)
        }
    }
    print("Names:", names)
    print("Grouped by first letter:")
    for (k, v) in groups.sorted(by: { String($0.key) < String($1.key) }) {
        print("\(k): \(v)")
    }
}

func task_2_18() {
    print("\n--- Task 2.18 — Shopping cart ---")
    let prices: [String: Double] = [
        "Apple": 0.99,
        "Milk": 2.49,
        "Bread": 1.99,
        "Eggs": 2.99
    ]
    let itemsBought = ["Apple", "Milk", "Apple", "Bread"]
    var total: Double = 0.0
    for item in itemsBought {
        let price = prices[item] ?? 0.0
        total += price
        print("Added \(item): $\(String(format: "%.2f", price)), running total: $\(String(format: "%.2f", total))")
    }
    print("Total bill: $\(String(format: "%.2f", total))")
}

// Run all tasks
func runAll() {
    task_2_1()
    task_2_2()
    task_2_3()
    task_2_4()
    task_2_5()
    task_2_6_and_2_7()
    task_2_8()
    task_2_9()
    task_2_10()
    task_2_11()
    task_2_12()
    task_2_13()
    task_2_14()
    task_2_15()
    task_2_16()
    task_2_17()
    task_2_18()
}

runAll()
