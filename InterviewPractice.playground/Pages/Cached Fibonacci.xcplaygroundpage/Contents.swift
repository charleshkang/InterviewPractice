//: [Previous](@previous)

import Foundation

typealias NumType = Double

var calculatedFibs = [NumType: NumType]()

func fib(num: NumType) -> NumType {
    guard num > 1 else { // when num is 0, 1, just return 0, 1.
        return num
    }
    if let cached = calculatedFibs[num] { // read cache
        return cached
    }
    
    // calculate recursively
    let result = fib(num - 1) + fib(num - 2)
    
    // write cache
    calculatedFibs[num] = result
    
    return result
}

fib(6)