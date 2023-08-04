//
//  SimilarityOfArray.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 배열의 유사도
func SimilarityOfArray(_ s1:[String], _ s2:[String]) -> Int {
    return Dictionary(grouping: s1 + s2) { $0 }.filter { $0.value.count > 1 }.count
}
