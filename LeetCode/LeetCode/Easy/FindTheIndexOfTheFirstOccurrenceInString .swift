//
//  FindTheIndexOfTheFirstOccurrenceInString .swift
//  LeetCode
//
//  Created by hogang on 2023/09/24.
//

import Foundation

// 28. Find the Index of the First Occurrence in a String
struct FindTheIndexOfTheFirstOccurrenceInString {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var s = ""
        for (index, c) in haystack.enumerated() {
            s += String(c)
            if s.suffix(needle.count) == needle {
                return index + 1 - needle.count
            }
        }
        return -1
    }
}
/*
 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 Example 1:

 Input: haystack = "sadbutsad", needle = "sad"
 Output: 0
 Explanation: "sad" occurs at index 0 and 6.
 The first occurrence is at index 0, so we return 0.
 Example 2:

 Input: haystack = "leetcode", needle = "leeto"
 Output: -1
 Explanation: "leeto" did not occur in "leetcode", so we return -1.
  

 Constraints:

 1 <= haystack.length, needle.length <= 104
 haystack and needle consist of only lowercase English characters.
 */
