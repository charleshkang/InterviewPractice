//: Playground - noun: a place where people can play

import UIKit

var arr = [2,4,1,56,1]

// Create a doubly linked list
class LLNode<T> {
    var key: T!
    var next: LLNode?
    var previous: LLNode?
}

class LinkedList<T: Equatable> {
    var head: LLNode<T> = LLNode<T>()
    
    // append a new item
    func addLink(key: T) {
        
        if (head.key == nil) {
            head.key = key
            return
        }
        
        // establish loop variables
        var current: LLNode? = head
        while (current != nil) {
            
            if (current?.next == nil) {
                
                let childToUse: LLNode = LLNode<T>()
                
                childToUse.key = key
                childToUse.previous = current
                current!.next = childToUse
                break
            }
            
            else {
                current = current?.next
            }
        } // end while loop
    }
    
    func printAllKeys() {
        
        var current: LLNode! = head
        
        while (current != nil) {
            print("link item is \(current.key)")
            current = current.next
        }
        
    }
}


