//
//  IHateEvenNumber.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 짝수는 싫어요
func IHateEvenNumber(_ n:Int) -> [Int] {
    return [Int](1...n).filter {
        $0 % 2 == 1
    }
}
