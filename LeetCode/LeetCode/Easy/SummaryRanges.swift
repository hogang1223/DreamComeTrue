//
//  SummaryRanges.swift
//  LeetCode
//
//  Created by hogang on 2023/09/20.
//

import Foundation

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
