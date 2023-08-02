//
//  SumOfEvenNumbers.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 짝수의 합
func sumOfEvenNumbers(_ n:Int) -> Int {
    return [Int](0...n).filter { $0 % 2 == 0 }.reduce(0) { $0 + $1 }
}
