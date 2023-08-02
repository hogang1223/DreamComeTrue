//
//  RemoveVowel.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 모음 제거
func RemoveVowel(_ my_string:String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    return my_string.filter {
                !vowels.contains(String($0))
            }
}
