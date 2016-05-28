//: [Previous](@previous)

import Foundation

infix operator ** { precedence 150 } // create a custom operator called **

func ** (lhs: Int, rhs: Int) -> Int
{
    assert(lhs >= 0 && rhs >= 0)
    guard lhs > 0 else { return 0 }
    return rhs + (lhs - 1) ** rhs
}

10 ** 3

func mult(a: Int, b: Int) -> Int // not recursion
{
    let bigger = max(a, b)
    let smaller = min(a, b)
    
    var result = 0
    
    for count in 0..<smaller {
        print(count)
        result += bigger
        print(result)
    }
    return result
}

mult(5, b: 8)

func recursiveMult(a: Int, b: Int) -> Int
{
    if a == 0 || b == 0 {
        return 0
    } else if a == 1 {
        return b
    } else {
        return recursiveMult(a - 1, b: b) + b
    }
}

recursiveMult(10, b: 9)
