//
//  BacterialGrowth.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 세균 증식
func BacterialGrowth(_ n:Int, _ t:Int) -> Int {
    return NSDecimalNumber(decimal: pow(Decimal(2), t)).intValue * n
}
