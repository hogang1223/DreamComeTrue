//
//  GetCenterValue.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 중앙값 구하기
func getCenterValue(_ array:[Int]) -> Int {
    return array.sorted()[array.count / 2]
}
