//: [Previous](@previous)

import Foundation

func isAnagram(str: String, permutatedStr: String) -> Bool
{
    if str.characters.count != permutatedStr.characters.count {
        return false
    }
    
    var tallyDict = [Character: Int]()
    
    for char in str.characters {
        if let value = tallyDict[char] {
            tallyDict[char] = value + 1
        } else {
            tallyDict[char] = 1
        }
    }
    
    for char in permutatedStr.characters {
        if let value = tallyDict[char] {
            tallyDict[char] = value - 1
        } else {
            return false
        }
    }
    return true
}
isAnagram("cerave", permutatedStr:"evcear")
