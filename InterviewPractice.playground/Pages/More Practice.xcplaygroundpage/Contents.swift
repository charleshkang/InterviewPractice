//: [Previous](@previous)

import Foundation


var reversedStr = ""

func isPalindrome(str: String) -> Bool {
    
    for char in str.characters {
        reversedStr = "\(char)" + reversedStr
        print(reversedStr)
    }
    if str == reversedStr {
        return true
    } else {
        return false
    }
}
isPalindrome("madam")

//func AZ(str: String) -> Bool {
//    var i = 0
//    while i < str.characters.count {
//        if str[i] != "a" {
//            i += 1
//        }
//    }
//    
//}

// return 3rd largest
// say the first number is the largest and start comparing i to arr[i] + 1

//func thirdLargest(arr: [Int]) -> Int {
//    
//    
//    for i in arr {
//        var thirdLargest = i
//        
//        if i < arr[i] {
//            
//        }
//    }
//}

// [1,4,6,1,2,3,7,9]
func something() {
    var x = nil?
}

let findArr = [5,3,1,2,3,7]
var largest = findArr.first

for i in findArr {
    if largest < i {
        continue
    } else {
        largest = i
    }
}
print(largest)

//for i in findArr {
//    if findArr[i]  {
//        largest = findArr[i]
//    }
//}
//print(largest)