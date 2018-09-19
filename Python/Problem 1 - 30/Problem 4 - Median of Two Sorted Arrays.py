# Your runtime beats 92.84 % of python submissions.
# https://leetcode.com/problems/median-of-two-sorted-arrays/description/

class Solution(object):
    def findMedianSortedArrays(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: float
        """
        length = len(nums1) + len(nums2)

        if length == 0:
            return 0

        mid = int(length/2)
        i, j, k = 0, 0, 0
        midValue, nextMidValue = 0, 0

        while (i < mid):
            if j < len(nums1) and k < len(nums2):
                if nums1[j] > nums2[k]:
                    midValue = nums2[k]
                    k += 1
                else:
                    midValue = nums1[j]
                    j += 1
                i += 1
            elif j < len(nums1):
                j = mid - len(nums2) - 1
                midValue = nums1[j]
                j += 1
                break
            elif k < len(nums2):
                k = mid - len(nums1) - 1
                midValue = nums2[k]
                k += 1
                break

        if j < len(nums1) and k < len(nums2):
            if nums1[j] > nums2[k]:
                nextMidValue = nums2[k]
            else:
                nextMidValue = nums1[j]
        elif j < len(nums1):
            nextMidValue = nums1[j]
        elif k < len(nums2):
            nextMidValue = nums2[k]

        if length % 2 == 1:
            return nextMidValue
        else:
            return (nextMidValue + midValue) / 2.0