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

func haha(str1: String, str2: String) -> Bool {
    return str1.characters.sort() == str2.characters.sort()
    // return true if the sorted string str1 matches sorted string str2, else false
}
haha("aquaphor", str2: "ohprauqa")

func mult(a: Int, b: Int) -> Int {
    if a == 0 {
        return 0
    } else if a == 1 {
        return b
    } else {
        return mult(a - 1, b: b) + b
    }
}
mult(20, b: 41)

func exercise1(s : String) -> Bool {
    
    var buckets = [Character : Int]()
    for character in s.characters {
        if let count = buckets[character] {
            buckets[character] = count + 1
            print("\(s): character \(character) found twice")
            return false
        }
        else {
            buckets[character] = 1
        }
    }
    return true
}
exercise1("bob")
