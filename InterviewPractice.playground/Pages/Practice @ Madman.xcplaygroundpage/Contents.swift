//: [Previous](@previous)

import Foundation

func largest(n: [Int]) -> Int {
    var largest = n[0]
    
    for element in n {
        if element > largest {
            largest = element
        }
    }
    return largest
}
largest([6,5,1,3,23,7,891])
largest([6,5,1,3,23,7,38])

func secondLargest(n: [Int]) -> Int {
    var largest = n[0]
    var secondL = n[1]
    
    for element in n {
        if element > largest {
            secondL = largest
            largest = element
        } else if element > secondL && element != largest {
            secondL = element
        }
    }
    return secondL
}
secondLargest([3,2,1])
secondLargest([8,4,1,2,3,4,51,23,4,1])

func isPalindrome(str: String) -> Bool {
    var reversedStr = ""
    
    for c in str.characters {
        reversedStr = "\(c)" + reversedStr
    }
    return str == reversedStr
}
isPalindrome("maddam")

func factorial(n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
factorial(4)