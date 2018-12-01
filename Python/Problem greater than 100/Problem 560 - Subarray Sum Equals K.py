# Runtime: 56 ms, faster than 97.64% of Python3 online submissions for Subarray Sum Equals K.

class Solution:
    def subarraySum(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        sumDict = {}
        sum = 0
        count = 0
        
        for i in range(len(nums)):
            n = nums[i]
            sum += n

            if sum == k:
                count += 1
            
            if sum - k in sumDict:
                count += sumDict[sum - k]
            
            if sum in sumDict:
                sumDict[sum] = sumDict[sum] + 1
            else:
                sumDict[sum] = 1

        return count