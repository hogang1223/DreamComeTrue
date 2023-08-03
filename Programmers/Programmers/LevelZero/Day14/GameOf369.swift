//
//  GameOf369.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/03.
//

import Foundation

// 369게임
func GameOf369(_ order:Int) -> Int {
    let game = [3, 6, 9]
    return String(order).filter {
                return game.contains(Int(String($0)) ?? 0 )
            }.count
}
