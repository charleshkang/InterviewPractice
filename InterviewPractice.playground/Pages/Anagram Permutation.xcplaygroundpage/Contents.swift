//: [Previous](@previous)

import Foundation

func isAnagram(word: String, permutatedWord: String) -> Bool
{
    // base case
    if word.characters.count != permutatedWord.characters.count {
        return false
    }
    
    var wordDict = [Character:Int]() // create a hashmap/dict to keep track of characters we find
    
    for char in word.characters { // iterate over the 1st string's chars
        
        if let _ = wordDict[char] { // if letter a is in hashmap, and we find it again, increment a by 1
            print(wordDict)
        } else {
            wordDict[char] = 1 // if letter is not in hashmap, assign value of the char by 1
            print(wordDict)
        }
    }
    
    for char in permutatedWord.characters { // now we loop over the 2nd string, to decrement
        
        if let _ = wordDict[char] { // if letter a is in hashmap, and we find it again, decrement by 1
            wordDict[char]! -= 1
            print(wordDict)
        } else if {
            return false // if letter is not in hashmap at this point, return false because a letter in string 2 was never used
        }
    }
    return true // return true iff letters in 1st string are used in 2nd string
}
isAnagram("charles", permutatedWord: "lllllll")
