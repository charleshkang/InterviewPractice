//: [Previous](@previous)

import Foundation

func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
factorial(4)

func fibo(n: Int) -> Int {
    if n <= 2 {
        return 1
    } else {
        return fibo(n - 1) + fibo(n - 2)
    }
}
fibo(5)


var reversedString = ""
func reverseString(strToReverse: String) -> String {
    
    // first loop through string to get chars
    for char in strToReverse.characters {
        reversedString = "\(char)" + reversedString
    }
    return reversedString
}
reverseString("mesfin")

var reverseString = ""

func isPalindrome(strToCheck: String) -> Bool {
    
    for char in strToCheck.characters {
        reverseString = "\(char)" + reverseString
        print(reverseString)
    }
    if reverseString == strToCheck {
        return true
    }
    return false
}

var returnString = ""
var charDict = [Character: Int]()

func noDupes(dupeString: String) -> String {
    
    for char in dupeString.characters {
        
        if let _ = charDict[char] {
            continue
        } else {
            charDict[char] = 1
            returnString.append(char)
        }
    }
    print(returnString)
    return returnString
}
noDupes("apple")

var str = "connecticut"
var strToReturn = ""

var dict = [Character:Int]() // creating an empty dict

for char in str.characters {
    if let _ = dict[char] {
        continue
    } else {
        dict[char] = 1
        strToReturn.append(char)
    }
}
print(strToReturn)
