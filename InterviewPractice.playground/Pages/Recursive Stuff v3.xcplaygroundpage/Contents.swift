//: [Previous](@previous)

import Foundation

func fibo(n: Int) -> Int {
    if n <= 2 {
        return 1
    } else {
        return fibo(n - 1) + fibo(n - 2)
    }
}
fibo(4)

func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * (n - 1)
    }
}
factorial(3)

func toThePower(x: Int, _ y: Int) -> Int {
    if y == 0 {
        return 1
    } else {
        return x * toThePower(x, y - 1)
        // return x * toThePower(2,2)
    }
}
toThePower(2, 4)



