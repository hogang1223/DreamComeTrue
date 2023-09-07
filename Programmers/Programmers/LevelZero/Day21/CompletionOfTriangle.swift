//
//  CompletionOfTriangle.swift
//  Programmers
//
//  Created by hogang on 2023/09/07.
//

import Foundation

// 삼각형의 완성조건2
func CompletionOfTriangle(_ sides:[Int]) -> Int {let sum = sides.reduce(0, +)
    let max = sides.max() ?? 0
    let min = sides.min() ?? 0
    let minimum = max - min + 1

    let caseMax = Array(max..<sum)
    let caseNotMax = Array(minimum..<max)
    let result = Set(caseMax + caseNotMax)
    return result.count
}
