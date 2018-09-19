# Your runtime beats 99.33 % of python submissions.
# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        substart, maxLength, dict = -1, 0, {}

        for i, c in enumerate(s):
            index = dict.get(c)
            dict[c] = i 
            if index is not None and index > substart:
                substart = index
                
            if i - substart > maxLength:
                maxLength = i - substart
                
        return maxLength