//
//  Day18.swift
//  LeetCode
//
//  Created by hogang on 2023/09/18.
//

import Foundation


// 506. Relative Ranks
struct RelativeRanks {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        let sortedDic = Dictionary(uniqueKeysWithValues:score.sorted(by: >).enumerated().map { ($1, $0) })
        return score.map {
            switch sortedDic[$0] {
            case 0:
                return "Gold Medal"
            case 1:
                return "Silver Medal"
            case 2:
                return "Bronze Medal"
            default:
                return String(sortedDic[$0]! + 1)
            }
        }
    }
}

// 228. Summary Ranges
struct SummaryRanges {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var result = [String]()
        var stack = [Int]()
        for (index, num) in nums.enumerated() {
            if index != nums.count - 1 && nums[index+1] == num+1 {
                stack.append(num)
            }
            else {
                if stack.isEmpty {
                    result.append(String(num))
                }
                else {
                    result.append("\(stack.first!)->\(num)")
                    stack.removeAll()
                }
            }
        }
        return result
    }
}

// 704. Binary Search
struct BinarySearch {
    /*
     Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

     You must write an algorithm with O(log n) runtime complexity.

     Example 1:

     Input: nums = [-1,0,3,5,9,12], target = 9
     Output: 4
     Explanation: 9 exists in nums and its index is 4
     Example 2:

     Input: nums = [-1,0,3,5,9,12], target = 2
     Output: -1
     Explanation: 2 does not exist in nums so return -1

     Constraints:

     1 <= nums.length <= 104
     -104 < nums[i], target < 104
     All the integers in nums are unique.
     nums is sorted in ascending order.
     */
    func search(_ nums: [Int], _ target: Int) -> Int {
        return nums.firstIndex(of: target) ?? -1
    }
}
