//: [Previous](@previous)

import Foundation

let sets: [Character: Character] = [
    "(": ")",
    "[": "]",
    "{": "}"
]

func areCharsBalanced(str: String) -> Bool {
    var stack = [Character]()
    for char in str.characters {
        if sets.keys.contains(char) {
            stack.append(char)
            continue
        }
        
        if let opened = stack.last { // if stack.last exists, then assign it to opened
            if let closer = sets[opened] {
                if char == closer {
                    stack.removeLast()
                }
            }
        }
    }
    return stack.count == 0
}
areCharsBalanced("{{{}}}")
areCharsBalanced("[]")
areCharsBalanced("{{)]")
