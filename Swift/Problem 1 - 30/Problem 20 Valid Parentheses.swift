//
//  Problem 20 Valid Parentheses.swift
//  
//
//  Created by KL on 12/7/2018.
//

/*
    https://leetcode.com/problems/valid-parentheses/description/
    Your runtime beats 100.00 % of swift submissions.
*/

struct Stack<Element> {
    fileprivate var array: [Element] = []
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
    
    func isEmpty() -> Bool {
        if array.count == 0 {
            return true
        }else {
            return false
        }
    }
}

class Solution {
    func isValid(_ s: String) -> Bool {
        
        var closeBracketStack = Stack<String>()
        let strs = Array(s)
        
        if s.count % 2 == 1 {
            return false
        }
        
        for s in strs {
            if s == "(" {
                closeBracketStack.push(")")
            }else if s == "[" {
                closeBracketStack.push("]")
            }else if s == "{" {
                closeBracketStack.push("}")
            }else if closeBracketStack.isEmpty() || closeBracketStack.pop() != String(s) {
                return false
            }
        }
        
        return closeBracketStack.isEmpty()
    }
}

