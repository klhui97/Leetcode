//
//  Problem 7 - Reverse Integer.swift
//  
//
//  Created by KL on 11/7/2018.
//

/*
    *Your runtime beats 97.60 % of swift submissions.*
    https://leetcode.com/problems/reverse-integer/description/
*/
class Solution {
    func reverse(_ x: Int) -> Int {
        var reverse = 0
        var value = x
        while (value != 0) {
            let pop = value % 10
            value /= 10
            if reverse > 214748364 || (reverse == 214748364 && pop > 7){
                return 0
            }
            if reverse < -214748364 || (reverse == -214748364 && pop < -8){
                return 0
            }
            
            reverse = reverse*10 + pop
        }
        
        return reverse
    }
}
