//
//  ZigzagConversation.swift
//  LeetCode
//
//  Created by hogang on 2023/11/01.
//

import Foundation

// 6.Zigzag Conversation

struct ZigzagConversation {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows != 1 else { return s }
        var result = ""
        let letters = Array(s)
        
        let a = numRows * 2 - 2
        for i in 0..<numRows {
            let y = i * 2
            let x = a - y
            var index = i
            var b = x
            while index < letters.count {
                result += String(letters[index])
                if i == 0 || i == numRows - 1 {
                    index += a
                }
                else {
                    index += b
                    b = b == x ? y : x
                }
            }
        }
        return result
    }
}

/*
 6. Zigzag Conversion
 Medium
 6.9K
 13.6K
 Companies
 The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

 P   A   H   N
 A P L S I I G
 Y   I   R
 And then read line by line: "PAHNAPLSIIGYIR"

 Write the code that will take a string and make this conversion given a number of rows:

 string convert(string s, int numRows);
  

 Example 1:

 Input: s = "PAYPALISHIRING", numRows = 3
 Output: "PAHNAPLSIIGYIR"
 Example 2:

 Input: s = "PAYPALISHIRING", numRows = 4
 Output: "PINALSIGYAHRPI"
 Explanation:
 P     I    N
 A   L S  I G
 Y A   H R
 P     I
 Example 3:

 Input: s = "A", numRows = 1
 Output: "A"
  

 Constraints:

 1 <= s.length <= 1000
 s consists of English letters (lower-case and upper-case), ',' and '.'.
 1 <= numRows <= 1000
 */
