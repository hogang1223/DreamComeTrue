//
//  ReverseVowelsOfString.swift
//  LeetCode
//
//  Created by hogang on 2023/09/20.
//

import Foundation

// 345. Reverse Vowels of a String
struct ReverseVowelsOfString {
    
    func reverseVowels(_ s: String) -> String {
        var s = Array(s)
        let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var (L, R) = (0, s.count-1)
        while L < R {
            if vowels.contains(s[L]) && vowels.contains(s[R]) {
                s.swapAt(L, R)
                L += 1
                R -= 1
            } else if vowels.contains(s[L]) {
                R -= 1
            } else if vowels.contains(s[R]) {
                L += 1
            } else {
                L += 1
                R -= 1
            }
        }
        
        return String(s)
    }
    
    /*
    func reverseVowels(_ s: String) -> String {
        var vowels = s.reversed().filter {
            String($0).lowercased() == "a"
            || String($0).lowercased() == "e"
            || String($0).lowercased() == "i"
            || String($0).lowercased() == "o"
            || String($0).lowercased() == "u"
        }
        return s.reduce("") {
            if String($1).lowercased() == "a"
                || String($1).lowercased() == "e"
                || String($1).lowercased() == "i"
                || String($1).lowercased() == "o"
                || String($1).lowercased() == "u" {
                return $0 + String(vowels.removeFirst())
            }
            return $0 + String($1)
        }
    }
     */
    
    /*
     Given a string s, reverse only all the vowels in the string and return it.
     
     The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
     
     
     
     Example 1:
     
     Input: s = "hello"
     Output: "holle"
     Example 2:
     
     Input: s = "leetcode"
     Output: "leotcede"
     
     
     Constraints:
     
     1 <= s.length <= 3 * 105
     s consist of printable ASCII characters.
     */
}
