//: [Previous](@previous)

import Foundation

func findLargest(n: [Int]) -> Int {
    
    var largest = n[0]
    
    for e in n {
        if e > largest {
            largest = e
        }
    }
    return largest
}
findLargest([3,4,6,1,2,3,5,1,7,2421,3122,3,1222,122222])
findLargest([122222,4,6,1,2,3,5,1,7,2421,3122,3,1222,12226522])

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
findSecondLargest([3,2,3])
findSecondLargest([5,3,2,1])
findSecondLargest([5,1,10,3,2,1]) //5
findSecondLargest([3,2,1]) //3
findSecondLargest([6,1,2,3,7,8,1,100,20,499,3000,3001]) //3000
findSecondLargest([3000,1,2,3,7,8,1,40001,39999,20,499,3000,3001]) //39999
findSecondLargest([40000,1,2,3,7,8,1,40001,39999,20,499,3000,3001]) //39999
