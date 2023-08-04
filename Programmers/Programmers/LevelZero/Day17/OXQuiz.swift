//
//  OXQuiz.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// OX퀴즈
func OXQuiz(_ quiz:[String]) -> [String] {
    return quiz.map {
        var qq = $0.replacingOccurrences(of: "- ", with: "-").replacingOccurrences(of: "--", with: "+ ").split(separator: " ").filter { $0 != "+" }
        let answer = Int(qq.removeLast()) ?? 0
        qq.removeLast() // "=" 제거
        return qq.map{ Int($0) ?? 0 }.reduce(0, +) == answer ? "O" : "X"
    }
}
