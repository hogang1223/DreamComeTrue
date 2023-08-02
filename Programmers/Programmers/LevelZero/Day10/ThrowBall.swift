//
//  ThrowBall.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 공던지기
func ThrowBall(_ numbers:[Int], _ k:Int) -> Int {
    var numList = numbers
    let index = (k - 1) * 2
    while index > numList.count {
        numList += numbers
    }
    return numList[index]
}
