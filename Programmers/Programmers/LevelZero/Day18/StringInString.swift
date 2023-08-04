//
//  StringInString.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 문자열안에 문자열
func StringInString(_ str1:String, _ str2:String) -> Int {
    return str1.replacingOccurrences(of: str2, with: "*").filter { String($0) == "*" }.count > 0 ? 1 : 2
}

