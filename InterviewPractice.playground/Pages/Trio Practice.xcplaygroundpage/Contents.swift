//: [Previous](@previous)

import Foundation

func isAnagram(str: String, permutatedStr: String) -> Bool
{
    if str.characters.count != permutatedStr.characters.count {
        return false
    }

    var tallyDict = [Character: Int]()
    
    for char in str.characters {
        if let count = tallyDict[char] where count > 0 {
            tallyDict[char]! += 1
            
        }
    }
    
    for char in permutatedStr.characters {
        if let count = tallyDict[char] where count > 0 {
            tallyDict[char]! -= 1
        }
    }
    return true
}
isAnagram("charles", permutatedStr: "searlhc")

func isPalindrome(str: String) -> Bool
{
    var reversedStr = ""
    
    for char in str.characters {
        reversedStr = "\(char)" + reversedStr
    }
    return str == reversedStr
}


infix operator ** {precedence 150}

func **(lhs: Int, rhs: Int) -> Int
{
    assert(lhs >= 0 && rhs >= 0)
    guard lhs > 0 else {
        return 0
    }
    return rhs + (lhs - 1) ** rhs
    // return 5 + (14) ** 5
    
}
15**5

func exercise8(s1: String, s2: String) -> Bool {
    
    let s2Repeated = s2 + s2
    // does adegatoradegator contain gatorade? then return true
    return s2Repeated.containsString(s1)
}
exercise8("gatorade", s2: "adegator")
