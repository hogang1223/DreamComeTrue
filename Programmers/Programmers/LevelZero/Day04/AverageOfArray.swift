//
//  AverageOfArray.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 배열의 평균값
func averageOfArray(_ numbers:[Int]) -> Double {
    /*
     정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.
     */
    return Double(numbers.reduce(0, +)) / Double(numbers.count)
}
