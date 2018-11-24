# Runtime: 64 ms, faster than 82.49% of Python3 online submissions for Kth Smallest Element in a Sorted Matrix.

class Solution:
    def kthSmallest(self, matrix, k):
        """
        :type matrix: List[List[int]]
        :type k: int
        :rtype: int
        """
        n = len(matrix)
        minArray = []

        for row in matrix:
            minArray += row
        minArray = sorted(minArray)
        return minArray[k - 1]