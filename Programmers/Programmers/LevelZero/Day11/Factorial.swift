//
//  Factorial.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 팩토리얼
func Factorial(_ n:Int) -> Int {
    var num = n
    var index = 0
    while true {
        index += 1;
        num /= index
        if num <= index {
            return index
        }
    }
}
