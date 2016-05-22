//: [Previous](@previous)

import Foundation

var testArr = [6,3,-2,9,10]


func insertionSort(arr: [Int]) -> [Int] {
    
    var newArray = arr
    for i in 1..<newArray.count {
        var y = i
        let temp = newArray[y]
        while y > 0 && temp < newArray[y - 1] {
            newArray[y] = newArray[y - 1]
            y -= 1
        }
        newArray[y] = temp
    }
    return newArray
}

insertionSort(testArr)
