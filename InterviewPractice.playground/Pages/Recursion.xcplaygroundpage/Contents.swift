//: [Previous](@previous)

import Foundation

func fibonacci(n: Int) -> Int {
    if n <= 2 {
        return 1
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}
fibonacci(7)

func factorial(n: Int) -> Int {
    if n <= 1 {
        return 1
    } else {
        return n * (n - 1)
    }
}
factorial(4)

var arr = [1,2,3,4,5,6,7,8]

for i in 0..<arr.count/2 {
    
    var temp = arr[i]
    
    arr[i] = arr[arr.count - 1 - i]
    arr[arr.count - 1 - i] = temp
    
}
print(arr)


// arr[i] // 1st element
// arr[arr.count - 1 - i]

// first swap: 1 and 7
// second: 2 and 6
// third: 3 and 5
//

// loop over the elements of the arr
// have the elements,

// inefficient solution that works?
// check each letter in y and make sure each letter has a corresponding letter in x
// if all letters in y are present in x, return true, else false

var str = "connecticut"
var strToReturn = ""

var dict = [Character:Int]() // creating an empty dict

for char in str.characters {
    if let _ = dict[char] {
        continue
    } else {
        dict[char] = 1
        strToReturn.append(char)
    }
}
print(strToReturn)

// check if the letter is already in the hash table

// key = letter
// value = how many times seen

// output: conetiu

// see if letter has been seen/added


func palindrome(paliString: String) -> Bool {
    
    var reversedStr = ""
    
    for char in paliString.characters {
        reversedStr =  "\(char)" + reversedStr
        print(reversedStr)
    }
    
    return reversedStr == paliString
}
palindrome("tact coa")

func isPalindrome(palindromeString: String) -> Bool {
    if String(palindromeString.characters.reverse()) != palindromeString {
        return false
    } else {
        return true
    }
}
isPalindrome("taco cat")

var hash = [Int:Int]() // create empty dict

func memoizedFib(n: Int) -> Int {
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 1
    } else {
        
        return memoizedFib(n - 1) + memoizedFib(n - 2)
    }
}
memoizedFib(6)

typealias NumType = Double

var calculatedFibs = [NumType: NumType]()

func fib(num: NumType) -> NumType {
    guard num > 1 else { // when num is 0, 1, just return 0, 1.
        return num
    }
    if let cached = calculatedFibs[num] { // read cache
        return cached
    }
    
    // calculate recursively
    let result = fib(num - 1) + fib(num - 2)
    
    // write cache
    calculatedFibs[num] = result
    
    return result
}
fib(6)
