//
//  ChooseMultipleOfN.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// n의 배수 고르기
func ChooseMultipleOfN(_ n:Int, _ numlist:[Int]) -> [Int] {
    return numlist.filter { $0 % n == 0 }
}
