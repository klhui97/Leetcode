//
//  Problem 9 - Palindrome Number.swift
//  
//
//  Created by KL on 12/7/2018.
//

/*
    https://leetcode.com/problems/palindrome-number/description/
    Your runtime beats 100.00 % of swift submissions.
*/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }else if x == 0 {
            return true
        }else {
            var int1 = x
            var int2 = x % 10
            
            if int2 == 0 {
                return false
            }
            
            while int1 > int2 {
                int1 /= 10
                let pop = int1 % 10
                int2 = int2 * 10 + pop
            }
            
            if int1 == int2 {
                return true
            }else {
                let pop = int2 % 10
                int1 = int1 * 10 + pop
                if int1 == int2 {
                    return true
                }
            }
            
            return false
        }
    }
}
