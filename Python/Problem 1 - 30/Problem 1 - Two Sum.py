# Your runtime beats 100.00 % of python submissions.
# https://leetcode.com/problems/two-sum/

class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        dict = {}
        for i, num in enumerate(nums):
            k = target - num
            index = dict.get(k)
            if index == None:
                dict[num] = i
            else:
                return [index, i]

        return [2, 3]