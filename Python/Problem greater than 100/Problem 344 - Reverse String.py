# Runtime: 24 ms, faster than 99.94% of Python online submissions for Reverse String.

class Solution(object):
    def reverseString(self, s):
        """
        :type s: str
        :rtype: str
        """
        reverse = ''
        i = 0
        while i < len(s):
            reverse = s[i] + reverse
            i += 1
        return reverse