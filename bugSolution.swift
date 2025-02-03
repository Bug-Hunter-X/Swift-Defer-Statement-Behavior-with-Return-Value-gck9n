func myFunc() -> Int {
    var x = 0
    defer { x += 1 }
    let result = x
    return result
}

print(myFunc()) // Prints 0 

func myFuncCorrected() -> Int {
    var x = 0
    defer { x += 1 }
    return x
}

print(myFuncCorrected()) // Prints 1

//Another solution, less readable
func myFunc2() -> Int {
    var x = 0
    let result = x
    defer { x += 1 }
    return result //Prints 0
}
print(myFunc2())

func myFunc3() -> Int {
    var x: Int = 0
    defer { x += 1 }
    defer { x += 10 }
    return x
} 
print(myFunc3()) // Prints 11