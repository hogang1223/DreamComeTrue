//
//  PalindromeNumber.swift
//  LeetCode
//
//  Created by hogang on 2023/10/04.
//
import Swift
import Foundation

// 9. Palindrome Number
struct PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        var num = x, reversedNum = 0
        while num > 0 {
            reversedNum = reversedNum * 10 + num % 10
            num /= 10
        }
        return x == reversedNum
    }
    /*
     9. Palindrome Number
     Easy
     11.2K
     2.6K
     Companies
     Given an integer x, return true if x is a
     palindrome
     , and false otherwise.

      

     Example 1:

     Input: x = 121
     Output: true
     Explanation: 121 reads as 121 from left to right and from right to left.
     Example 2:

     Input: x = -121
     Output: false
     Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
     Example 3:

     Input: x = 10
     Output: false
     Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
      

     Constraints:

     -231 <= x <= 231 - 1
      

     Follow up: Could you solve it without converting the integer to a string?
     */
}
