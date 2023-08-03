//
//  RemoveDuplicationString.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/03.
//

import Foundation

// 중복된 문자 제거
func solutiRemoveDuplicationStringon(_ my_string:String) -> String {
    var aa = Set(my_string)
    return Array(my_string).filter {
        if aa.contains($0) {
            aa.remove($0)
            return true
        }
        return false
    }.map { String($0) }.joined()
}
