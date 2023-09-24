//
//  InsertGreatestCommonDivisorsinLinkedList .swift
//  LeetCode
//
//  Created by hogang on 2023/09/22.
//

import Foundation

// 2807. Insert Greatest Common Divisors in Linked List

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
    
struct InsertGreatestCommonDivisorsinLinkedList {
    
    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
        var node = head
        while node != nil {
            if let num1 = node?.val,
                let num2 = node?.next?.val {
                let gcd = greatestCommonDivisor(num1, num2: num2)
                let newNode = ListNode(gcd, node?.next)
                node?.next = newNode
                node = node?.next?.next
            }
            else {
                node = node?.next
            }
        }
        return head
    }
    
    // 최대공약수 구하기
    func greatestCommonDivisor(_ num1: Int, num2: Int) -> Int {
        if num2 == 0 {
            return num1
        }
        else {
            return greatestCommonDivisor(num2, num2: num1 % num2)
        }
    }
    
    /*
     Given the head of a linked list head, in which each node contains an integer value.

     Between every pair of adjacent nodes, insert a new node with a value equal to the greatest common divisor of them.

     Return the linked list after insertion.

     The greatest common divisor of two numbers is the largest positive integer that evenly divides both numbers.

      

     Example 1:


     Input: head = [18,6,10,3]
     Output: [18,6,6,2,10,1,3]
     Explanation: The 1st diagram denotes the initial linked list and the 2nd diagram denotes the linked list after inserting the new nodes (nodes in blue are the inserted nodes).
     - We insert the greatest common divisor of 18 and 6 = 6 between the 1st and the 2nd nodes.
     - We insert the greatest common divisor of 6 and 10 = 2 between the 2nd and the 3rd nodes.
     - We insert the greatest common divisor of 10 and 3 = 1 between the 3rd and the 4th nodes.
     There are no more adjacent nodes, so we return the linked list.
     Example 2:


     Input: head = [7]
     Output: [7]
     Explanation: The 1st diagram denotes the initial linked list and the 2nd diagram denotes the linked list after inserting the new nodes.
     There are no pairs of adjacent nodes, so we return the initial linked list.
      

     Constraints:

     The number of nodes in the list is in the range [1, 5000].
     1 <= Node.val <= 1000
     */
    
    
    func arrToNode(arr: [Int]) -> ListNode? {
        if arr.isEmpty { return nil }
        var head = arr
        var node = ListNode(head.removeLast())
        while head.count != 0 {
            node = ListNode(head.removeLast(), node)
        }
        return node
    }

    func nodeToArray(node: ListNode?) -> [Int] {
        var arr = [Int]()
        guard let newNode = node else { return arr }
        var n = newNode
        while true {
            arr.append(n.val)
            guard let newNode = n.next else { return arr }
            n = newNode
        }
        return arr
    }
}
