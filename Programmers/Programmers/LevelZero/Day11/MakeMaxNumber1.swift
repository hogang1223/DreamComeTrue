//
//  MakeMaxNumber.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 최댓값 만들기 1
func MakeMaxNumber1(_ numbers:[Int]) -> Int {
    let sorted = numbers.sorted { $0 > $1 }
    return sorted[0] * sorted[1]
}
