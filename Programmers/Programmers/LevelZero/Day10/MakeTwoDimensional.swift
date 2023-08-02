//
//  MakeTwoDimensional.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 2차원으로 만들기
func MakeTwoDimensional(_ num_list:[Int], _ n:Int) -> [[Int]] {
    return Array(0..<Int(num_list.count / n)).map {
            return Array(num_list[($0 * n)..<($0 * n + n)])
        }
}
