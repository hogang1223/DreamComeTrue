//
//  CuttingPaper.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 종이 자르기
/*
 머쓱이는 큰 종이를 1 x 1 크기로 자르려고 합니다. 예를 들어 2 x 2 크기의 종이를 1 x 1 크기로 자르려면 최소 가위질 세 번이 필요합니다.
 
 제한사항
 0 < M, N < 100
 종이를 겹쳐서 자를 수 없습니다.

 입출력 예
 M    N    result
 2    2    3
 2    5    9
 1    1    0
 */
func cuttingPaper(_ M:Int, _ N:Int) -> Int {
    return M * N - 1
}
