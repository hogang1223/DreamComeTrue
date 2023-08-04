//
//  LetterAppearedOnce.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 한번만 등장한 문자

func LetterAppearedOnce(_ s:String) -> String {
    let dic = Dictionary(grouping: ArraySlice(s)) { $0 }
    return dic.keys.filter {
        return dic[$0]!.count == 1
    }.map { String($0) }.sorted().joined()
}
