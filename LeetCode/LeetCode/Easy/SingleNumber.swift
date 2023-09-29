//
//  SingleNumber.swift
//  LeetCode
//
//  Created by hogang on 2023/09/29.
//

import Foundation

// 136. Single Number
struct SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result ^= num
        }
        return result
        // 상상도 못한 해답... 신기방기.. 어떻게 이게 가능하지... ? 쥰내 신기하네;;;;;
        
        
//        if nums.count == 1 { return nums[0] }
//        let sorted = nums.sorted()
//        if sorted[0] != sorted[1] { return sorted[0] }
//        for idx in 1..<sorted.count-1 {
//            if sorted[idx] != sorted[idx - 1] && sorted[idx] != sorted[idx + 1]{
//                return sorted[idx]
//            }
//        }
//        return sorted.last!
    }
    /*
     Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

     You must implement a solution with a linear runtime complexity and use only constant extra space.

     Example 1:

     Input: nums = [2,2,1]
     Output: 1
     Example 2:

     Input: nums = [4,1,2,1,2]
     Output: 4
     Example 3:

     Input: nums = [1]
     Output: 1
      

     Constraints:

     1 <= nums.length <= 3 * 104
     -3 * 104 <= nums[i] <= 3 * 104
     Each element in the array appears twice except for one element which appears only once.
     */
}
