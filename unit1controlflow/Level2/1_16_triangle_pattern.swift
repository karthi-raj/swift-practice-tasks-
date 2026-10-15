// Task 1.16: Print a right-angled triangle pattern of stars with n rows. Variation: skip even rows.
let nRows = 6
for row in 1...nRows {
    if row % 2 == 0 { continue } // skip even rows as variation
    let line = String(repeating: "*", count: row)
    print(line)
}
