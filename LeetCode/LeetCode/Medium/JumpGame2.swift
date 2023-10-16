//
//  JumpGame2.swift
//  LeetCode
//
//  Created by hogang on 2023/10/16.
//

import Foundation

// 45. Jump Game II
struct JumpGame2 {
    func jump(_ nums: [Int]) -> Int {
        guard nums.count > 2 else { return nums.count - 1 }
        var jump = 1
        var indexs = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            indexs[i] = i + num
        }
        
        func doubleJump(to index: Int) {
            guard index < nums.count - 1 else { return }
            guard nums[index] < nums.count - 1 else { return }
            guard index + nums[index] < nums.count - 1 else { return }
            var g = index
            for i in index...(index + nums[index]) {
                 g = indexs[g]! > indexs[i]! ? g : i
            }
            jump += 1
            doubleJump(to: g)
        }
        doubleJump(to: 0)
        return jump
    }
    /*
     45. Jump Game II
     Medium
     13.5K
     482
     Companies
     You are given a 0-indexed array of integers nums of length n. You are initially positioned at nums[0].

     Each element nums[i] represents the maximum length of a forward jump from index i. In other words, if you are at nums[i], you can jump to any nums[i + j] where:

     0 <= j <= nums[i] and
     i + j < n
     Return the minimum number of jumps to reach nums[n - 1]. The test cases are generated such that you can reach nums[n - 1].

      

     Example 1:

     Input: nums = [2,3,1,1,4]
     Output: 2
     Explanation: The minimum number of jumps to reach the last index is 2. Jump 1 step from index 0 to 1, then 3 steps to the last index.
     Example 2:

     Input: nums = [2,3,0,1,4]
     Output: 2
      

     Constraints:

     1 <= nums.length <= 104
     0 <= nums[i] <= 1000
     It's guaranteed that you can reach nums[n - 1].
     */
}
