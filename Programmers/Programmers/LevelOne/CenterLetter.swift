//
//  CenterLetter.swift
//  Programmers
//
//  Created by hogang on 2023/09/13.
//

import Foundation

/*
 가운데 글자 가져오기
 문제 설명
 단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.

 재한사항
 s는 길이가 1 이상, 100이하인 스트링입니다.
 입출력 예
 s    return
 "abcde"    "c"
 "qwer"    "we"
 */

func solution(_ s:String) -> String {
    let letter = s.map { String($0) }
    let center = s.count / 2
    return s.count % 2 == 0 ? letter[center - 1] + letter[center] : letter[center]
}
