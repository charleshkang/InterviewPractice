//: [Previous](@previous)

import Foundation

func fibonacci(i: Int) -> Int {
    if i <= 2 {
        return 1
    } else {
        return fibonacci(i - 1) + fibonacci(i - 2)
    }
}
fibonacci(4)

func digits(number: Int) -> [Int] {
    if number >= 10 {
        let firstDigits = digits(number / 10)
        let lastDigit = number % 10
        return firstDigits + [lastDigit]
    } else {
        return [number]
    }
}
digits(44)

func pow(x: Int, _ y: Int) -> Int {
    if y == 0 {
        return 1
    } else {
        return x * pow(x, y - 1)
    }
}
pow(2, 7)

func factorial(n:Int) -> Int
{
    if n == 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
factorial(5)




