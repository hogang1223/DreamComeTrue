//
//  FindNumber.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 숫자 찾기
func FindNumber(_ num:Int, _ k:Int) -> Int {
    let result = String(num).map { String($0) }.firstIndex(of: String(k)) ?? -2
    return result + 1
}
