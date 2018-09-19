//
//  Problem 2 - Add Two Numbers.swift
//  
//
//  Created KL on 11/7/2018.
//

/*
    *Your runtime beats 99.58 % of swift submissions*
    https://leetcode.com/problems/add-two-numbers/ 
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var carry = 0
        var list1 = l1
        var list2 = l2
        var resultNode: ListNode?
        var node: ListNode?
        
        // Base Case
        let firstSum = list1!.val + list2!.val
        if firstSum > 9 {
            carry = 1
            resultNode = ListNode(firstSum - 10)
            node = resultNode
        }else{
            resultNode = ListNode(firstSum)
            node = resultNode
        }
        list1 = list1!.next
        list2 = list2!.next
        
        // Loop Case
        while (list1 != nil && list2 != nil){
            let sum = list1!.val + list2!.val + carry
            if sum > 9 {
                carry = 1
                resultNode!.next = ListNode(sum - 10)
                resultNode = resultNode!.next
            }else{
                carry = 0
                resultNode!.next = ListNode(sum)
                resultNode = resultNode!.next
            }
            list1 = list1!.next
            list2 = list2!.next
        }
        
        while (list1 != nil) {
            let sum = list1!.val + carry
            if sum > 9 {
                carry = 1
                resultNode!.next = ListNode(sum - 10)
                resultNode = resultNode!.next
                list1 = list1!.next
            }else{
                carry = 0
                resultNode!.next = ListNode(sum)
                resultNode = resultNode!.next
                list1 = list1!.next
                resultNode!.next = list1
            }
        }
        
        while (list2 != nil) {
            let sum = list2!.val + carry
            if sum > 9 {
                carry = 1
                resultNode!.next = ListNode(sum - 10)
                resultNode = resultNode!.next
                list2 = list2!.next
            }else{
                carry = 0
                resultNode!.next = ListNode(sum)
                resultNode = resultNode!.next
                list2 = list2!.next
                resultNode!.next = list1
            }
            
        }
        
        if carry == 1 {
            resultNode!.next = ListNode(carry)
            resultNode = resultNode!.next
        }
        
        return node
    }
}
