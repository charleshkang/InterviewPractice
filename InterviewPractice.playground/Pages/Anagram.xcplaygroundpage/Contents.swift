//: [Previous](@previous)

import Foundation

func isAnagram(word: String, permutatedWord: String) -> Bool
{
    if word.characters.count != permutatedWord.characters.count {
        return false
    }
    
    var wordDict = [Character:Int]()
    
    for char in word.characters {
        
        if let _ = wordDict[char] {
            wordDict[char]! += 1
        } else {
            wordDict[char] = 1
        }
    }
    
    for char in permutatedWord.characters {
        
        if let _ = wordDict[char] {
            wordDict[char]! -= 1
        } else {
            return false
        }
    }
    return true
}
isAnagram("color", permutatedWord: "lcoro")
