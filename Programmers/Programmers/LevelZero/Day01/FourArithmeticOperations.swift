//
//  FourArithmeticOperations.swift
//  Programmers
//
//  Created by hogang on 2023/05/20.
//

import Foundation

enum FourArithmeticOperations {
    case add
    case subtract
    case multiple
    case divide
}

extension FourArithmeticOperations {
    func solution(num1: Int, num2: Int) -> Int {
        switch self {
        case .add:
            return num1 + num2
        case .subtract:
            return num1 - num2
        case .multiple:
            return num1 * num2
        case .divide:
            return num1 / num2
        }
    }
}
