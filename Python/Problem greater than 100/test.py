class Solution:
    def lexicalOrder(self, n):
        """
        :type n: int
        :rtype: List[int]
        """
        base = 10
        num = 1
        for i in range(1,10):
            print(i)
            tempI = i
            while tempI <= n:
                tempI *= base
                for j in range(0,10):
                    if tempI > n:
                        break
                    print(tempI + j)

Solution().lexicalOrder(100)