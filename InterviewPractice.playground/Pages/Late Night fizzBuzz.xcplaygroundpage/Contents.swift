//: [Previous](@previous)

import Foundation

func fizzBuzz(n: Int) {
    
    for nums in 1...n {
        
        var str = ""
        
        if nums % 3 == 0 {
            str = "fizz"
        }
        if nums % 5 == 0 {
            str += "buzz"
        }
        if str.isEmpty {
            str += "\(nums)"
        }
        print(str)
    }
}

fizzBuzz(100)

