//
//  AddNumberOfDigits.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 자릿수 더하기
func AddNumberOfDigits(_ n:Int) -> Int {
    return String(n).map { Int(String($0)) ?? 0 }.reduce(0, +)
}
