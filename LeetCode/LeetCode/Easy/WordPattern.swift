//
//  WordPattern.swift
//  LeetCode
//
//  Created by hogang on 2023/10/19.
//

import Foundation

// 290. Word Pattern
struct WordPattern {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let letters = s.split(separator: " ")
        guard letters.count == pattern.count else {
             return false
        }
        
        var sDic = [Substring: Character]()
        var pDic = [Character: Substring]()
        
        for (p, l) in zip(pattern, letters) {
            if let newP = sDic[l], newP != p {
                return false
            }
            else if let newL = pDic[p], newL != l {
                return false
            }
            else {
                sDic[l] = p
                pDic[p] = l
            }
        }
        return true
    }
}

/*
 Given a pattern and a string s, find if s follows the same pattern.

 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.

  

 Example 1:

 Input: pattern = "abba", s = "dog cat cat dog"
 Output: true
 Example 2:

 Input: pattern = "abba", s = "dog cat cat fish"
 Output: false
 Example 3:

 Input: pattern = "aaaa", s = "dog cat cat dog"
 Output: false
  

 Constraints:

 1 <= pattern.length <= 300
 pattern contains only lower-case English letters.
 1 <= s.length <= 3000
 s contains only lowercase English letters and spaces ' '.
 s does not contain any leading or trailing spaces.
 All the words in s are separated by a single space.
 Accepted
 597.2K
 Submissions
 1.4M

 */
