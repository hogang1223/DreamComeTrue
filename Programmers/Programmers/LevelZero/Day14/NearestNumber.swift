//
//  NearestNumber.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/03.
//

import Foundation

// 가까운 수
func NearestNumber(_ array:[Int], _ n:Int) -> Int {
    return array.sorted().sorted {
                    abs($0-n) < abs($1-n)
                }[0]
}
