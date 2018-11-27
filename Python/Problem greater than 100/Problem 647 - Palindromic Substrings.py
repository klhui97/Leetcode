class Solution:
    def countSubstrings(self, s):
        """
        :type s: str
        :rtype: int
        """
        count = 0
        n = len(s)
        table = [[False for x in range(n)] for y in range(n)]
        count = 0

        for i in range(n - 1):
            table[i][i] = True
            count += 1
            if s[i] == s[i + 1]:
                table[i][i + 1] = True
                count += 1
        table[n - 1][n - 1] = True
        count += 1
        
        for i in reversed(range(n)):
            for j in reversed(range(n)):
                if abs(i - j) >= 2 and i + 1 < n and j - 1 > 0:
                    if s[i] == s[j] and table[i + 1][j - 1]:
                        table[i][j] = True
                        count += 1

        return count

print(Solution().countSubstrings("aaaaaa"))
