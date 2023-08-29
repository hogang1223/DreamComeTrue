//
//  PickTangerine.swift
//  Programmers
//
//  Created by hogang on 2023/08/29.
//

import Foundation

// 귤 고르기
func PickTangerine(_ k:Int, _ tangerine:[Int]) -> Int {
    var result = 0
    _ = Dictionary(grouping: tangerine) { $0 }.values
        .sorted { $0.count > $1.count }
        .reduce(k) {
            if $0 - $1.count > 0 { result += 1 }
            return $0 - $1.count
        }
    return result + 1
}
