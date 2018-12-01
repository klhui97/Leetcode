# Runtime: 36 ms, faster than 99.32% of Python3 online submissions for Minimum Add to Make Parentheses Valid.

class Solution:
    def minAddToMakeValid(self, S):
        """
        :type S: str
        :rtype: int
        """
        # The number of '()
        openCount = 0

        i = 0
        count = 0
        while i < len(S):
            if S[i] == '(':
                openCount += 1
            elif openCount == 0:
                count += 1
            else:
                openCount -= 1
            i += 1

        return count + openCount