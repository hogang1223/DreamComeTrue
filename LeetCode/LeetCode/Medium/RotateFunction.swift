//
//  RotateFunction.swift
//  LeetCode
//
//  Created by hogang on 2023/10/11.
//

import Foundation

// 396. Rotate Function
struct RotateFunction {
    func maxRotateFunction(_ nums: [Int]) -> Int {
        var numsSum = 0
        var multipleSum = 0
        let indexs = Array(0..<nums.count)
        
        for i in indexs {
            numsSum += nums[i] // 각 원소의 합
            multipleSum += nums[i] * i // 원소 * 인덱스의 합
        }
        
        var result = multipleSum
        
        for ri in indexs.reversed() {
            multipleSum = multipleSum - (nums[ri] * indexs.last!) + (numsSum - nums[ri])
            result = max(result, multipleSum)
        }
        return result
    }
}
/*
 You are given an integer array nums of length n.

 Assume arrk to be an array obtained by rotating nums by k positions clock-wise. We define the rotation function F on nums as follow:

 F(k) = 0 * arrk[0] + 1 * arrk[1] + ... + (n - 1) * arrk[n - 1].
 Return the maximum value of F(0), F(1), ..., F(n-1).

 The test cases are generated so that the answer fits in a 32-bit integer.

  

 Example 1:

 Input: nums = [4,3,2,6]
 Output: 26
 Explanation:
 F(0) = (0 * 4) + (1 * 3) + (2 * 2) + (3 * 6) = 0 + 3 + 4 + 18 = 25
 F(1) = (0 * 6) + (1 * 4) + (2 * 3) + (3 * 2) = 0 + 4 + 6 + 6 = 16
 F(2) = (0 * 2) + (1 * 6) + (2 * 4) + (3 * 3) = 0 + 6 + 8 + 9 = 23
 F(3) = (0 * 3) + (1 * 2) + (2 * 6) + (3 * 4) = 0 + 2 + 12 + 12 = 26
 So the maximum value of F(0), F(1), F(2), F(3) is F(3) = 26.
 Example 2:

 Input: nums = [100]
 Output: 0
  

 Constraints:

 n == nums.length
 1 <= n <= 105
 -100 <= nums[i] <= 100
 */

/*
 result:
 ex: [4,3,2,6]
 1R: 0 + 3 + 4 + 18
 2R: 4 + 6 + 6 + 0
 -----------------
 1R -> 2R에서 마지막 원소값은 0이 된다.
 즉 1R의 합계에서 마지막 원소값 * 배열갯수-1 값을 뺀다.
 그리고 그 외의 원소값들만 전부 더하면 됨
 1R의 합계에서 4 + 3 + 2 - 18 하면 2R의 값이 나옴
 이렇게 모든 합계를 확인 후 가장 큰 값 리턴.
 */
