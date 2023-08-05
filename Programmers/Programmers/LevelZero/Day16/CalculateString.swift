//
//  CalculateString.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 문자열 계산하기
func CalculateString(_ my_string:String) -> Int {
    let arr = my_string.split(separator: " ")
            var index = 1
            var numbers = arr.filter {
                return $0 != "+" && $0 != "-"
            }.map { Int($0) ?? 0 }
            print(numbers)
            let first = numbers.removeFirst()
            
            return numbers.reduce(first) {
                let op = arr[index]
                index += 2
                return op == "+" ? $0 + $1 : $0 - $1
            }
}
