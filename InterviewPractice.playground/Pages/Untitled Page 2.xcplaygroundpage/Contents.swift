//: [Previous](@previous)

import Foundation

func factorial(n : Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
factorial(5)

var problem = "find the longest word in the problem description"


// this will help the algorithm see the last word
problem += " "

var word = ""
var length = 0

var max = 0
var longestWord = ""

for character in problem.characters {
    print(character)
    if character == " " {
        if length > max {
            max = length
            longestWord = word
        }}}

print(longestWord)