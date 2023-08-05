//
//  DeterminingTheNumberOfSquares.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 제곱수 판별하기
func DeterminingTheNumberOfSquares(_ n:Int) -> Int {
    return Int(String(sqrt(Double(n))).split(separator: ".")[1]) ?? 0  > 0 ? 2: 1
}
