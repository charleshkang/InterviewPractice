//: [Previous](@previous)

import Foundation

func sumNums(num: Int) -> Int {
    if num <= 1 {
        return 1
    } else {
        return num + sumNums(num - 1)
    }
}
sumNums(4)

func timeConversion(minutes:Int) -> String {
    if minutes <= 60 {
        return "0:\(minutes)"
    } else {
        return "out of bounds!!!"
    }
}
timeConversion(39)

let string = "hello"
// return 2
func vowels(str: String) -> Int {
    var vowelCounter = 0
    let vowels = "aeiou"
    for vowel in vowels.characters {
        print(vowelCounter)
        var vowelDict = [Character:Int]()
        
        if let _ = vowelDict[vowel] {
            vowelDict[vowel]!
        } else {
            vowelCounter += 1
        }
    }
    print(vowelCounter)
    return vowelCounter
}
vowels("hello")


