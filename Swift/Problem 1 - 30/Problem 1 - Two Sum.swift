//
//  Problem 1 - Two Sum.swift
//  
//
//  Created by KL on 11/7/2018.
//

/*
    https://leetcode.com/problems/two-sum/description/
*/


class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var i = 0
        while (i < nums.count) {
            let temp = target - nums[i]
            if let index = dict[temp]{
                return [index, i]
            }
            dict[nums[i]] = i
            i += 1
        }
        return []
    }
}
