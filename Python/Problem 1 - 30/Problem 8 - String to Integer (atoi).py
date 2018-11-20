# Runtime: 36 ms, faster than 92.33% of Python online submissions for String to Integer (atoi).

class Solution(object):
    def isVaildFirstChar(self, char):
        if char == '-' or char == '+':
            return True
        else:
            return char.isdigit()

    def str2DigitString(self, str, index):
        vaildDigitStr = ''
        while index < len(str):
            if str[index].isdigit():
                vaildDigitStr += str[index]
            else:
                break
            index += 1
        if vaildDigitStr == '':
            return '0'
        else:
            return vaildDigitStr

    def myAtoi(self, str):
        """
        :type str: str
        :rtype: int
        """
        str = str.strip()
        firstIndex = 0
        if firstIndex >= len(str) or not self.isVaildFirstChar(str[firstIndex]):
            return 0

        if str[firstIndex] == '-':
            value = int(self.str2DigitString(str, firstIndex + 1)) * -1
            return max(value, -2147483648)
        elif str[firstIndex] == '+':
            value = int(self.str2DigitString(str, firstIndex + 1))
            return min(value, 2147483647)
        else:
            value = int(self.str2DigitString(str, firstIndex))
            return min(value, 2147483647)
