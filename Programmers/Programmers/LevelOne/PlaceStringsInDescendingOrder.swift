//
//  PlaceStringsInDescendingOrder.swift
//  Programmers
//
//  Created by hogang on 2023/09/23.
//

import Foundation

// 문자열 내림차순으로 배치하기
func PlaceStringsInDescendingOrder(_ s:String) -> String {
    return String(s.sorted(by: >))
}
