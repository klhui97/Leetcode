//
//  Problem 26 - Remove Duplicates from Sorted Array.swift
//  
//
//  Created by KL on 11/7/2018.
//

/*
    *Your runtime beats 98.03 % of swift submissions*
    https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/
 
*/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var length = 0
        
        if nums.count == 0 {
            return length
        }
        
        var i = 1
        while (i < nums.count) {
            if (nums[length] != nums[i]) {
                length += 1
                nums[length] = nums[i]
            }else{
                var low = i + 1
                var high = nums.count - 1
                var mid = (low + high)/2
                while low > high {
                    if nums[length] == nums[mid] {
                        i = mid
                        low = i
                        mid = (low + high)/2
                    }else {
                        high = mid - 1
                        mid = (low + high)/2
                    }
                }
            }
            i += 1
        }
        
        return length + 1
    }
}
