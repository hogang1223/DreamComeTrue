//
//  Subaksubaksu.swift
//  Programmers
//
//  Created by hogang on 2023/10/03.
//

import Foundation

//  수박수박수박수박수박수?
func Subaksubaksu(_ n:Int) -> String {
    let subak = String(repeating: "수박", count: n)
    return String(subak.prefix(n))
}

/*
 수박수박수박수박수박수?
 문제 설명
 길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요. 예를들어 n이 4이면 "수박수박"을 리턴하고 3이라면 "수박수"를 리턴하면 됩니다.

 제한 조건
 n은 길이 10,000이하인 자연수입니다.
 입출력 예
 n    return
 3    "수박수"
 4    "수박수박"
 */
