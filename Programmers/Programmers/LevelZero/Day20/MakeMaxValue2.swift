//
//  MakeMaxValue2.swift
//  Programmers
//
//  Created by hogang on 2023/08/31.
//

import Foundation

// 최댓값 만들기 (2)

func MakeMaxValue2(_ numbers:[Int]) -> Int {
    let sorted = numbers.sorted(by: >)
    return sorted[0] * sorted[1] > sorted[sorted.count - 1] * sorted[sorted.count - 2] ? sorted[0] * sorted[1] : sorted[sorted.count - 1] * sorted[sorted.count - 2]
}
