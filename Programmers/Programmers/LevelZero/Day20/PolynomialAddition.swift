//
//  PolynomialAddition.swift
//  Programmers
//
//  Created by hogang on 2023/08/31.
//

import Foundation

// 다항식 더하기

func PolynomialAddition(_ polynomial:String) -> String {
    let arr = polynomial.split(separator: " ")
    let count = arr.filter { $0.contains("x") }.reduce(0) {
        var num = $1.replacingOccurrences(of: "x", with: "")
        if let plus = Int(num) {
            return $0 + plus
        } else { return $0 + 1 }
    }
    
    var number = arr.filter {
        !$0.contains("x") && !$0.contains("+")
    }.reduce(0) {
        $0 + Int($1)!
    }
    if count == 0 { return "\(number)" }
    var xValue = count == 1 ? "x" : "\(count)x"
    if number == 0 { return xValue }
    return "\(xValue) + \(number)"
}
