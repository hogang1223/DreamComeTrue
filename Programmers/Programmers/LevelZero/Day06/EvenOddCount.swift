//
//  EvenOddCount.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 짝수 홀수 개수
func evenOddCount(_ num_list:[Int]) -> [Int] {
    /*
     정수가 담긴 리스트 num_list가 주어질 때, num_list의 원소 중 짝수와 홀수의 개수를 담은 배열을 return 하도록 solution 함수를 완성해보세요.
     */
    var result = [0, 0]
    num_list.forEach {
        if $0 % 2 == 0 {
            result[0] += 1
        }
        else {
            result[1] += 1
        }
    }
    return result
}
