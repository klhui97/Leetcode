# Runtime: 332 ms, faster than 66.50% of Python3 online submissions for Daily Temperatures.

class Solution:
    def dailyTemperatures(self, T):
        """
        :type T: List[int]
        :rtype: List[int]
        """
        indexStack = []
        result = [0 for _ in range(len(T))]
        for i in range(0, len(T)):
            if len(indexStack) == 0:
                indexStack.append(i)
            else:
                topIndex = indexStack[len(indexStack) - 1]
                while T[topIndex] < T[i]:
                    result[topIndex] = i - topIndex
                    del indexStack[-1]
                    if len(indexStack) == 0:
                        break
                    else:
                        topIndex = indexStack[len(indexStack) - 1]
                indexStack.append(i)
        
        return result