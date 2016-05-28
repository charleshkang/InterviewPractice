//: [Previous](@previous)

import Foundation

/* first we can say that the first element in the array is the largestInt. then we compare that number to the rest of the elements in the array. if the next element is greater than largestInt, that element becomes the new largest int. continue until you hit the end of the array.  */

func findLargestInt(n: [Int]) -> Int {
    var largestInt = n[0]
    
    for e in n {
        if e > largestInt {
            largestInt = e
            print(largestInt)
        }
    }
    return largestInt
}
findLargestInt([1,3,7,3,2,4,6,98,100,3])

/* we can create two variables called firstLargest and secondLargest. then set the values of the variables we just created to be the first and second element in the array. we then iterate over the elements in the array. for each of the elements in the array, if e is bigger than firstLargest, firstLargest is given the value of e, and the old value of firstLargest becomes the value of secondlargest. continue until you hit the end of the array, and return secondLargest */
func findSecondLargest(n: [Int]) -> Int {
    var largest = n[0]
    var secondLargest = n[1]
    
    for e in n {
        if e > largest {
            secondLargest = largest
            largest = e
        }
    }
    return secondLargest
}
findSecondLargest([9,2,6,7,10,23,35,123,4561,234,5132])