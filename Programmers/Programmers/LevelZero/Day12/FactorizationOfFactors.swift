//
//  FactorizationOfFactors.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 소인수 분해
func FactorizationOfFactors(_ n:Int) -> [Int] {
    var factors = Set<Int>()
    var num = n

    for i in 2...num {
        while num % i == 0 {
            factors.insert(i)
            num /= i
        }
    }
    if num > 1 {
        factors.insert(num)
    }
    return factors.map { $0 }.sorted()
}
