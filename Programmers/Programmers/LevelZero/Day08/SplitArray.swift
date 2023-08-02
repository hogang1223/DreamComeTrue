//
//  SplitArray.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 배열 자르기
func splitArray(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    var result = [Int]()
    for index in num1...num2 {
        result.append(numbers[index])
    }
    return result
}
