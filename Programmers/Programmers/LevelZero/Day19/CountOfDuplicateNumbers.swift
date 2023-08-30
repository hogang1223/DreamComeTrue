//
//  CountOfDuplicateNumbers.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 중복된 숫자 개수
func CountOfDuplicateNumbers(_ array:[Int], _ n:Int) -> Int {
    return array.filter { $0 == n }.count
}
