//: [Previous](@previous)

import Foundation

func isPalindrome(str: String) -> Bool
{
    var reversedStr = ""
    
    for char in str.characters {
        reversedStr = "\(char)" + reversedStr
    }
    return str == reversedStr
}
isPalindrome("apple")
