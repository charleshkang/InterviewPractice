//: [Previous](@previous)

import Foundation

typealias CharSet = (opener: Character, closer: Character)
struct Stack {
    var items : [CharSet]
    init() {
        items = []
    }
    var isEmpty: Bool {
        return items.isEmpty
    }
    mutating func push(item: CharSet) {
        items.append(item)
    }
    mutating func pop() -> CharSet {
        return items.removeLast()
    }
    func peek() -> CharSet? {
        if items.count == 0 {
            return nil
        }
        return items.last
    }
}

func isStringBalanced(str: String) -> Bool {
    var openStack = Stack()
    var closeStack = Stack()
    for char in str.characters {
        if ((char == "}" || char == "]" || char == ")") && openStack.isEmpty) {
            return false
        }
        
        if (char == "{" || char == "[" || char == "(") && (char == "}" || char == "]" || char == ")")  {
            openStack.push(CharSet)
            closeStack.push(CharSet)
            
        } else if char == "}" || char == "]" || char == ")" {
            closeStack.pop()
        }
    }
    return openStack.isEmpty
}
isStringBalanced("[]")

// iterate left to right
// if char at index matches a {, [, or (, then put it onto the stack
// when we find a closing brace, see if the top level item on the stack matches/closes the char at index
// if stack is empty or top does not match with char at index, return false
// else pop
// return stack.isEmpty true ?? false
