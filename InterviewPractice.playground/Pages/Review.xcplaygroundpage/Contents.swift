//: [Previous](@previous)

import Foundation

func isPaldindrome(s: String) -> Bool
{
    var reversedS = ""
    
    for char in s.characters {
        reversedS = "\(char)" + reversedS
    }
    return s == reversedS
}
isPaldindrome("maddam")

func secondBiggest(arr: [Int]) -> Int
{
    var largest = arr[0]
    var secondLargest = arr[1]
    
    for element in arr {
        if element > largest {
            largest = element
            secondLargest = largest
        } else if element > secondLargest && element != largest {
            secondLargest = element
        }
    }
    return secondLargest
}
secondBiggest([5,3,2,1])
secondBiggest([3,2,1])

func findSecondLargest(n: [Int]) -> Int {
    var largest = n[0]
    var secondLargest = n[1]
    
    for e in n {
        if e > largest {
            secondLargest = largest
            print(secondLargest)
            largest = e
            print(largest)
        } else if e > secondLargest && e != largest {
            secondLargest = e
            print(secondLargest)
        }
    }
    return secondLargest
}