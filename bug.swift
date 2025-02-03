func myFunc() -> Int {
    var x = 0
    defer { x += 1 }
    return x
}

print(myFunc()) // Prints 0, not 1 as one might expect