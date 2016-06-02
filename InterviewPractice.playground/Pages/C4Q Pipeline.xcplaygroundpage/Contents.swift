//: [Previous](@previous)

import Foundation

/* first we can say that the first element in the array is the largestInt. then we compare that number to the rest of the elements in the array. if the next element is greater than largestInt, that element becomes the new largest int. continue until you hit the end of the array.  */

func findLargestInt(n: [Int]) -> Int {
    var largestInt = n[0]
    
    for e in n {
        if e > largestInt {
            largestInt = e
//            print(largestInt)
        }
    }
    return largestInt
}
//findLargestInt([1,3,7,3,2,4,6,98,100,3])

/* we can create two variables called firstLargest and secondLargest. then set the values of the variables we just created to be the first and second element in the array. we then iterate over the elements in the array. for each of the elements in the array, if e is bigger than firstLargest, firstLargest is given the value of e, and the old value of firstLargest becomes the value of secondlargest. continue until you hit the end of the array, and return secondLargest.
 what are all the different cases e can be?
 when e is less than secondLargest, when e is greater than largest, and when e is the same as largest or secondLargest
 
 */


func findSecondLargest(n: [Int]) -> Int {
    var largest = n[0]
    var secondLargest = n[1]
    
    for e in n {
        if e > largest {
            secondLargest = largest
            print(secondLargest)
            largest = e
            print(largest)
        } else if e > secondLargest {
            secondLargest = e
        }
    }
    return secondLargest
}
//findSecondLargest([9,2,6,7,10,23,35,123,4561,234,5132])
//findSecondLargest([2,3])
//findSecondLargest([3,4,5,1,7,8,2,30,12])
//findSecondLargest([100,101,300,4,6,7,2,3,4,5,299,3001])
//findSecondLargest([3,2])
//findSecondLargest([1,2,3,4,5,6,5,6,7,8])
findSecondLargest([3,2,1])

