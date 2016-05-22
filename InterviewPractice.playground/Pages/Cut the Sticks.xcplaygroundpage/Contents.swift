//: [Previous](@previous)

import Foundation

var n = Int(readLine()!)!
var sticks = readLine()!.characters.split(" ").map({Int(String($0)) ?? 0})

// find stick with smallest length
var smallestStick = sticks.minElement()!

// create var i to loop through ints, then subtract each element by the minInt
for (index,item) in sticks.enumerate() {
    var cut = sticks[index] - smallestStick
    if (cut == 0) {
        sticks.removeAtIndex(cut)
        print(cut)
    }
}

