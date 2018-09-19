//
//  Problem 21 - Merge Two Sorted Lists.swift
//  
//
//  Created by KL on 11/7/2018.
//

/*
    https://leetcode.com/problems/merge-two-sorted-lists/description/
    Your runtime beats 100.00 % of swift submissions.
*/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l1 == nil && l2 == nil {
            return nil
        }else if l2 == nil {
            return l1
        }else if l1 == nil {
            return l2
        }
        
        var list1Node = l1
        var list2Node = l2
        var resultFirstNode: ListNode?
        var resultNode: ListNode?
        
        if list1Node!.val > list2Node!.val {
            resultFirstNode = list2Node
            resultNode = list2Node
            list2Node = list2Node!.next
        }else {
            resultFirstNode = list1Node
            resultNode = list1Node
            list1Node = list1Node!.next
        }
        
        while list1Node != nil && list2Node != nil {
            if list1Node!.val > list2Node!.val {
                resultNode!.next = list2Node
                resultNode = resultNode!.next
                list2Node = list2Node!.next
            }else {
                resultNode!.next = list1Node
                resultNode = resultNode!.next
                list1Node = list1Node!.next
            }
        }
        
        if list1Node != nil {
            resultNode!.next = list1Node
        }
        
        if list2Node != nil {
            resultNode!.next = list2Node
        }
        
        return resultFirstNode
    }
}
