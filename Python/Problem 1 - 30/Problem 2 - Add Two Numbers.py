# Your runtime beats 99.11 % of python submissions
# https://leetcode.com/problems/add-two-numbers/description/

class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution(object):
    def addTwoNumbers(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        node = ListNode((l1.val + l2.val) % 10)
        carry = (l1.val + l2.val) // 10
        p = node
        p1 = l1.next
        p2 = l2.next

        while p1 and p2:
            p.next = ListNode((p1.val + p2.val + carry) % 10)
            carry = (p1.val + p2.val + carry) // 10
            p = p.next
            p1 = p1.next
            p2 = p2.next
        
        while p1:
            p.next = ListNode((p1.val + carry) % 10)
            carry = (p1.val + carry) // 10
            p = p.next
            if carry == 0:
                p.next = p1.next
                break
            else:
                p1 = p1.next
        
        while p2:
            p.next = ListNode((p2.val + carry) % 10)
            carry = (p2.val + carry) // 10
            p = p.next
            if carry == 0:
                p.next = p2.next
                break
            else:
                p2 = p2.next

        if carry == 1:
            p.next = ListNode(1)

        return node