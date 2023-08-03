//
//  ControlZ.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/03.
//

import Foundation

// 컨트롤 제트
func ControlZ(_ s:String) -> Int {
    var num = 0
    return s.split(separator: " ").reduce(0) {
                if ($1 == "Z") {
                    return $0 - num
                }
                else {
                    num = Int($1) ?? 0
                    return $0 + num
                }
            }
}
