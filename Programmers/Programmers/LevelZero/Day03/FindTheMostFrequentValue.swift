//
//  FindTheMostFrequentValue.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 최빈값 구하기
func findTheMostFrequentValue(_ array:[Int]) -> Int {
    var counter = [Int: Int]()
    array.forEach {
        counter[$0, default: 0] += 1
    }
    
    var count = 0
    let filteredCounter = counter.sorted {
        $0.value > $1.value
    }.filter {
        if $0.value > count {
            count = $0.value
        }
        return $0.value >= count
    }
    
    if filteredCounter.count == 1 {
        return filteredCounter.first?.key ?? -1
    }
    return -1
}
