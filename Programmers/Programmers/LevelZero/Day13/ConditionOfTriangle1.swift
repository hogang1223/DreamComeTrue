//
//  ConditionOfTriangle1.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/03.
//

import Foundation

// 삼각형의 완성조건 1
func ConditionOfTriangle1(_ sides:[Int]) -> Int {
    let sorted = sides.sorted()
    return sorted[0] + sorted[1] > sorted[2] ? 1 : 2
}
