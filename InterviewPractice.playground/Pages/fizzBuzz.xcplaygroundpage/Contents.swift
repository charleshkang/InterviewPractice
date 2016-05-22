//: [Previous](@previous)

import Foundation

let n = 100
var string = ""

//for nums in 0..<n {
//    if nums % 5 == 0 && nums % 3 == 0 {
//        
//    } else if nums % 5 == 0 {
//        print("fizz")
//    } else if nums % 3 == 0 {
//        print("buzz")
//    }
//
//}

func fizzbuzz(n: Int) {
    for nums in 1...n {
        var string = ""
        
        if nums % 3 == 0 {
            string = "fizz"
        }
        
        if nums % 5 == 0 {
            string += "buzz"
        }
        if string.isEmpty {
            string += "\(nums)"
        }
        print(string)
    }
}
fizzbuzz(100)

