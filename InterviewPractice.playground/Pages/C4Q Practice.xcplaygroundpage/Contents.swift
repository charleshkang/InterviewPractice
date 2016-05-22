//: [Previous](@previous)

import Foundation

func reverseString(str: String) -> String {
    var reversedString = " "
    
    for char in str.characters {
        reversedString =  "\(char)" + reversedString
    }
    return reversedString
}
reverseString("hello")


var charCounter = 0
var outputString = ""


func simplifyString(inputStr: String) -> String {
    
    for char in inputStr.characters{
        let currentChar = char
        if currentChar == inputStr[char] {
            
        }
    }
    
    
}