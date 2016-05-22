//: [Previous](@previous)

import Foundation

// simple hash table structure

class HashTable {
    
    private var buckets: Array<HashNode!>
    
    // init the buckets with nil values
    init(capacity: Int) {
        self.buckets = Array<HashNode!>(count: capacity, repeatedValue: nil)
    }
    
    func createHash(fullName: String) -> Int! {
        
        var remainder: Int = 0
        var divisor: Int = 0
        
        for key in fullName.unicodeScalars {
            divisor += Int(key.value)
        }
        
        remainder = divisor % buckets.count
        
        return remainder - 1
    }
    
    func addWord(firstName: String, lastName: String) {
        
        var hashIndex: Int!
        var fullName: String!
        
        fullName = firstName + lastName
        hashIndex = self.createHash(fullName)
        
        var childToUse: HashNode = HashNode()
        var head: HashNode!
        
        childToUse.firstName = firstName
        childToUse.lastName = lastName
        
        // check for existing list
        if (buckets[hashIndex] == nil) {
            buckets[hashIndex] = childToUse
        }
    }
}

class HashNode {
    var firstName: String!
    var lastName: String!
    var next: HashNode!
}



