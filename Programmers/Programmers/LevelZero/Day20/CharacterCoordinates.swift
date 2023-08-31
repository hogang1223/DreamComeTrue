//
//  CharacterCoordinates.swift
//  Programmers
//
//  Created by hogang on 2023/08/31.
//

import Foundation

// 캐릭터의 좌표
func CharacterCoordinates(_ keyinput:[String], _ board:[Int]) -> [Int] {
    return keyinput.reduce([0, 0]) {
            var v = $0[0]
            var h = $0[1]
            if $1 == "up" { h += 1 }
            if $1 == "down" { h -= 1 }
            if $1 == "left" { v -= 1 }
            if $1 == "right" { v += 1 }
            if abs(v) > board[0] / 2 || abs(h) > board[1] / 2 {
                return $0
            }
            return [v, h]
        }
}
