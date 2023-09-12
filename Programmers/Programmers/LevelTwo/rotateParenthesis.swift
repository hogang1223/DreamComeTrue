//
//  rotateParenthesis.swift
//  Programmers
//
//  Created by hogang on 2023/09/12.
//

import Foundation

// 괄호 회전하기
func rotateParenthesis(_ s:String) -> Int {
    let dic = [
        ")": "(",
        "]": "[",
        "}": "{"
    ]
    var letter = s.map { String($0) }
    var stack = [String]()
    var result = 0
    
    for _ in s {
        var index = 0
        for l in letter {
            if dic.keys.contains(l) {
                if stack.isEmpty || stack.last != dic[l] { break }
                else { stack.removeLast() }
            }
            else {
                stack.append(l)
            }
            index += 1
        }
        if index == letter.count && stack.isEmpty { result += 1 }
        letter.append(letter.removeFirst())
    }
    return result
}
