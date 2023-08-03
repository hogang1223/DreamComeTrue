//
//  LengthOfArray.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/03.
//

import Foundation

// 배열 원소의 길이
func LengthOfArray(_ strlist:[String]) -> [Int] {
    return strlist.map { $0.count }
}
