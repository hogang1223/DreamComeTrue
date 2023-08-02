//
//  FindCompositNumber.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 합성수 찾기
func FindCompositNumber(_ n:Int) -> Int {
    if n < 4 { return 0 }
    return Array(4...n).filter { num in
                    return Array(1...num).filter { i in
                        num % i == 0
                    }.count > 2
                }.count
}
