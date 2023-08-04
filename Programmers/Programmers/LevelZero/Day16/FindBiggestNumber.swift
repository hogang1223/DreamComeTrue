//
//  FindBiggestNumber.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 가장 큰 수 찾기
func FindBiggestNumber(_ array:[Int]) -> [Int] {
    let max = array.max()
    let index = array.firstIndex(of: max!)
    return [max!, index!]
}
