# Runtime: 48 ms, faster than 99.47% of Python3 online submissions for Odd Even Linked List.

# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def oddEvenList(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        if head == None or head.next == None:
            return head
        else:
            p = head
            headEven = p.next
            pEven = headEven
            p.next = pEven.next
            if p.next != None:
                p = p.next
            while p.next != None:
                evenNode = p.next
                p.next = evenNode.next
                if p.next != None:
                    p = p.next

                pEven.next = evenNode
                pEven = pEven.next
                
            pEven.next = None
            p.next = headEven
            return head



# Debug
head = ListNode(1)
head.next = ListNode(2)
head.next.next = ListNode(3)
head.next.next.next = ListNode(4)
head.next.next.next.next = ListNode(5)

x = Solution().oddEvenList(head)
print(x)