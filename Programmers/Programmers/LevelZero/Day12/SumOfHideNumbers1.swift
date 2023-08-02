//
//  SumOfHideNumbers.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 숨어있는 숫자의 덧셈 1
func SumOfHideNumbers1(_ my_string:String) -> Int {
    return my_string.compactMap {
                Int(String($0))
            }.reduce(0, +)
}
