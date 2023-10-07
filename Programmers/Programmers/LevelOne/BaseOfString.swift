//
//  BaseOfString.swift
//  Programmers
//
//  Created by hogang on 2023/10/07.
//

import Foundation

//  문자열 다루기 기본
func BaseOfString(_ s:String) -> Bool {
    // 조건을 체크하여 실행흐름을 종료시킬 때에는 if문 보다는 가급적 guard 구문을 사용하는 것이 좋다.
    guard s.count == 4 || s.count == 6 else { return false }
    guard Int(s) != nil else { return false }
    return true
}

/*
 문자열 다루기 기본
 문제 설명
 문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요. 예를 들어 s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면 됩니다.

 제한 사항
 s는 길이 1 이상, 길이 8 이하인 문자열입니다.
 s는 영문 알파벳 대소문자 또는 0부터 9까지 숫자로 이루어져 있습니다.
 입출력 예
 s    return
 "a234"    false
 "1234"    true
 */
