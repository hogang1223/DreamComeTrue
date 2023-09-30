//
//  ContainsDuplicate2.swift
//  LeetCode
//
//  Created by hogang on 2023/09/30.
//

import Foundation

// 219. Contains Duplicate II
struct ContainsDuplicate2 {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if Set(nums).count == nums.count {
             return false
        }
        var dic = [Int: Int]()
        for (i, num) in nums.enumerated() {
            if let j = dic[num], abs(i - j) <= k { return true
            }
            else {
                dic[num] = i
            }
        }
        return false
    }
    /*
     Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

     Example 1:

     Input: nums = [1,2,3,1], k = 3
     Output: true
     Example 2:
     
     Input: nums = [1,0,1,1], k = 1
     Output: true
     Example 3:

     Input: nums = [1,2,3,1,2,3], k = 2
     Output: false
      

     Constraints:

     1 <= nums.length <= 105
     -109 <= nums[i] <= 109
     0 <= k <= 105
     */
}
