//
//  RemoveSomeString.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 특정 문자 제거하기
/*
 문자열 my_string과 문자 letter이 매개변수로 주어집니다. my_string에서 letter를 제거한 문자열을 return하도록 solution 함수를 완성해주세요.
 */
func removeSomeString(_ my_string:String, _ letter:String) -> String {
    return my_string.replacingOccurrences(of: letter, with: "")
}
