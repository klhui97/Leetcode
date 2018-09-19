//
//  Problem 13 - Roman to Integer.swift
//  
//
//  Created by KL on 18/7/2018.
//
/*
    Your runtime beats 95.91 % of swift submissions.
    https://leetcode.com/problems/roman-to-integer/description/
*/

class Solution {
    
    func romanToInt(_ s: String) -> Int {
        var dict: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var result = 0
        var array = Array(s)
        var i = array.count - 1
        
        while i >= 0 {
            let value = dict[array[i]]!
            if value * 4 >= result {
                result += value
            }else {
                result -= value
            }
            i -= 1
        }
        
        return result
    }
}
