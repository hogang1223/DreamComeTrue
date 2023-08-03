//
//  UppercaseLowercase.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/03.
//

import Foundation

// 대문자와 소문자
func UppercaseLowercase(_ my_string:String) -> String {
    return Array(my_string).map {
        return String($0) == String($0).uppercased() ? String($0).lowercased() : String($0).uppercased()
    }.joined()
}
