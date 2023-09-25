//
//  IsSubsequence.swift
//  LeetCode
//
//  Created by hogang on 2023/09/25.
//

import Foundation

// 392. Is Subsequence
struct IsSubsequence {
    func isSubsequence(_ s: String, t: String) -> Bool {
        var arr = Array(s)
        for i in t {
            if arr.isEmpty {
                return true
            }
            else if arr[0] == i {
                arr.removeFirst()
            }
        }
        return arr.isEmpty
    }
}
