//
//  PrintStringRepeating.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 문자 반복 출력
func printStringRepeating(_ my_string:String, _ n:Int) -> String {
    /*
     문자열 my_string과 정수 n이 매개변수로 주어질 때, my_string에 들어있는 각 문자를 n만큼 반복한 문자열을 return 하도록 solution 함수를 완성해보세요.
     */
    var result = ""
    for c in my_string {
        result += String(repeating: c, count: n)
    }
    return result
}
