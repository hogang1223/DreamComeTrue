//
//  ReversedString.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 문자열 뒤집기
func reversedString(_ my_string:String) -> String {
    return my_string.map { String($0) }.reversed().joined()
}
