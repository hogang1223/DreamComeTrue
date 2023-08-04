//
//  GetDivisor.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 약수 구하기
func GetDivisor(_ n:Int) -> [Int] {
    return Array(1...n).filter { num in n % num == 0 }
}
