//
//  ArrangeArray1.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 문자열 정렬하기 1
func ArrangeArray1(_ my_string:String) -> [Int] {
    return my_string.compactMap {
                Int(String($0))
            }.sorted()
}
