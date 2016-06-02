//: [Previous](@previous)

import Foundation

func removeDuplicates(array: [String]) -> [String] {
    var encountered = Set<String>() // create a set of strings
    var result: [String] = [] // create an empty array of strings to hold onto the non-duped strings
    for value in array { // iterate over elements in array
        if encountered.contains(value) { // if we iterate over a word we have seen, do not add it to the result array
        }
        else {
            encountered.insert(value) // if it's the first time seeing the string, we add it to the set
            result.append(value) // then append the value to the result array
        }
    }
    print(result)
    return result // then just return the result array
}
removeDuplicates(["cat", "dog", "cat", "frog", "cat", "dog", "cat", "walrus", "cat"])
removeDuplicates(["dog","dog","dog","cat","cat","penguin","kangaroo"])



/* to remove dupes from a list, we can start off by creating a set of strings. then we create an empty array of strings to hold onto the non-dupes strings. create a for loop and iterate over the elements in the array. if we see a word previously encountered, do not add it to the result array, but if it's the first time seeing it, add it to the set. then append the value to the result array. then return the result array */
