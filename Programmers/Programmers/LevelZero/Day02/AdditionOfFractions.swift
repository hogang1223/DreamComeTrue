//
//  AdditionOfFractions.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

func additionOfFractions(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    let numResult = numer1 * denom2 + numer2 * denom1
    let denomResult = denom1 * denom2
    let gcd = greatestCommonDivisor(numResult, num2: denomResult)
    return [numResult/gcd, denomResult/gcd]
}

// 최소공배수 구하기
func greatestCommonDivisor(_ num1: Int, num2: Int) -> Int {
    if num2 == 0 {
        return num1
    }
    else {
        return greatestCommonDivisor(num2, num2: num1 % num2)
    }
}
