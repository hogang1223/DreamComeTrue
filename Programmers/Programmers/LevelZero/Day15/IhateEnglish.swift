//
//  IhateEnglish.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 영어가 싫어요

func IhateEnglish(_ numbers:String) -> Int64 {
        let arabicNumerals = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"
    ]
    var result = numbers
    arabicNumerals.keys.forEach {
        result = result.replacingOccurrences(of: $0, with: arabicNumerals[$0] ?? "")
    }
    guard let aa = Int64(result) else { return 0 }
    return aa
}
