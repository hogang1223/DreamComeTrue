//
//  RotateArray.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 배열 회전시키기

func RotateArray(_ numbers:[Int], _ direction:String) -> [Int] {
    var result = numbers
    if direction == "left" {
        result.append(result.removeFirst())
    }
    else {
        result.insert(result.removeLast(), at: 0)
    }
    return result
}
