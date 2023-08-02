//
//  DiceCount.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 주사위의 개수
func DiceCount(_ box:[Int], _ n:Int) -> Int {
    return box.map { $0 / n }.reduce(1,*)
}
