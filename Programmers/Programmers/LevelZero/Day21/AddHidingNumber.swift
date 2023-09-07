//
//  AddHidingNumber.swift
//  Programmers
//
//  Created by hogang on 2023/09/07.
//

import Foundation

// 숨어있는 숫자의 덧셈 (2)
func AddHidingNumber(_ my_string:String) -> Int {
    return Array(my_string).map {
            if let number = Int(String($0)) {
                return String($0)
            } else { return " " }
        }.joined().split(separator: " ").reduce(0) { $0 + Int($1)! }
}
