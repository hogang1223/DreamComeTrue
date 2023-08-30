//
//  countOfSeven.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/30.
//

import Foundation

// 7의 개수
func countOfSeven(_ array:[Int]) -> Int {
    return ArraySlice(array.reduce("") { $0 + String($1) }).filter { $0 == "7" }.count
}