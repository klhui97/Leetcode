//
//  Problem 14 - Longest Common Prefix.swift
//  
//
//  Created by KL on 11/7/2018.
//

/*
    https://leetcode.com/problems/longest-common-prefix/description/
    Your runtime beats 98.69 % of swift submissions.
*/
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.count == 0 {
            return ""
        }
        
        var maxStringLength = strs[0].count
        var prefix = strs[0]
        
        for i in 1..<strs.count {
            if strs[i].count < maxStringLength {
                maxStringLength = strs[i].count
            }
            
            prefix = String(prefix[..<prefix.index(prefix.startIndex, offsetBy: maxStringLength)])
            
            var currentPrefix = String(strs[i][..<strs[i].index(strs[i].startIndex, offsetBy: maxStringLength)])
            
            while prefix != currentPrefix && maxStringLength > 0{
                maxStringLength -= 1
                prefix = String(prefix[..<prefix.index(prefix.startIndex, offsetBy: maxStringLength)])
                currentPrefix = String(strs[i][..<strs[i].index(strs[i].startIndex, offsetBy: maxStringLength)])
            }
            
            if maxStringLength == 0 {
                return ""
            }
        }
        
        
        return prefix
    }
}
