//
//  PrintRightTriangle.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 직각삼각형 출력하기
func printRightTriangle() {
    /*
     "*"의 높이와 너비를 1이라고 했을 때, "*"을 이용해 직각 이등변 삼각형을 그리려고합니다. 정수 n 이 주어지면 높이와 너비가 n 인 직각 이등변 삼각형을 출력하도록 코드를 작성해보세요.
     */
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
    let nInt:Int = n[0]
    var answer = ""
    for index in 1...nInt {
        for _ in 0..<index {
            answer += "*"
        }
        answer += "\n"
    }
    print(answer)
}
