//
//  rangeString2.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 문자열 정렬하기
func rangeString2(_ my_string:String) -> String {
    return my_string.lowercased().sorted().map {String($0)}.joined()
}
