//
//  MajorityElement.swift
//  LeetCode
//
//  Created by hogang on 2023/09/29.
//

import Foundation

// 169. Majority Element
struct MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        let arr = nums.sorted()
        return arr[nums.count / 2]
//        let dic = Dictionary(grouping: nums) { $0 }
//        let a = dic.keys.sorted { dic[$0]!.count > dic[$1]!.count }
//        return a[0]
//        let set = Set(nums)
//        for n in set {
//            if nums.filter { $0 == n }.count > nums.count / 2 {
//                return n
//            }
//        }
//        return nums[0]
    }
    /*
     Given an array nums of size n, return the majority element.

     The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
     Example 1:

     Input: nums = [3,2,3]
     Output: 3
     Example 2:

     Input: nums = [2,2,1,1,1,2,2]
     Output: 2
      

     Constraints:
     n == nums.length
     1 <= n <= 5 * 104
     -109 <= nums[i] <= 109

     */
}
