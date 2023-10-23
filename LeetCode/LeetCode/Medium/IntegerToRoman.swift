//
//  IntegerToRoman.swift
//  LeetCode
//
//  Created by hogang on 2023/10/23.
//

import Foundation

// 12. Integer to Roman
struct IntegerToRoman {
    func intToRoman(_ num: Int) -> String {
        let romaji: (Int) -> Array<String> = {
            switch $0 {
            case 0: return ["I", "V", "X"]
            case 1: return ["X", "L", "C"]
            case 2: return ["C", "D", "M"]
            default:
                return ["M"]
            }
        }
        
        let checkNumber: (Array<String>, Int) -> String =  {
            guard $1 != 0 else { return "" }
            if $1 < 4 {
                return String(repeating: $0[0], count: $1)
            }
            else if $1 == 4 {
                return $0[0]+$0[1]
            }
            else if $1 == 9 {
                return $0[0]+$0[2]
            }
            else {
                return $0[1] + String(repeating:$0[0], count: $1 - 5)
            }
        }
        
        var result = ""
        for (i, s) in String(num).reversed().enumerated() {
            guard let n = Int(String(s))  else { return result }
            result = checkNumber(romaji(i), n) + result
        }
        return result
    }
}

/*
 12. Integer to Roman
 Medium
 6.4K
 5.3K
 Companies
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 Given an integer, convert it to a roman numeral.

  

 Example 1:

 Input: num = 3
 Output: "III"
 Explanation: 3 is represented as 3 ones.
 Example 2:

 Input: num = 58
 Output: "LVIII"
 Explanation: L = 50, V = 5, III = 3.
 Example 3:

 Input: num = 1994
 Output: "MCMXCIV"
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
  

 Constraints:

 1 <= num <= 3999
 */

