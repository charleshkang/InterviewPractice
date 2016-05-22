//: [Previous](@previous)

import Foundation

public class BST <T: Comparable> {
    var key: T?
    var left: BST?
    var right: BST?
    
    func addNode(key: T) {
        
        // check for head node
        if (self.key == nil) {
            self.key = key
            return
        }
        
        // check the left side
        if (key < self.key) {
            if (self.left != nil) {
                left?.addNode(key)
            }
            else {
                
                // create a new left node
                var leftChild: BST = BST()
                leftChild.key = key
                self.left = leftChild
            }
        } // end if
        
        // check the right side
        if (key > self.key) {
            if (self.right != nil) {
                
                right?.addNode(key)
            }
            else {
                
                // create a new right node
                var rightChild: BST = BST()
                rightChild.key = key
                self.right = rightChild
            }
        } // end if
    } // end function
}

let numberList = [8,2,10,9,11,1,7]

// create a new BST instance
var root = BST<Int>()

for number in numberList {
    root.addNode(number)
}

// add item based on its value
