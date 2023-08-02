//
//  getCoordinatesOfPoint.swift
//  Programmers
//
//  Created by hogang on 2023/08/02.
//

import Foundation

// 점의 위치 구하기
func getCoordinatesOfPoint(_ dot:[Int]) -> Int {
    let right: Bool = dot[0] > 0
    let up: Bool = dot[1] > 0
    return right && up ? 1 : !right && up ? 2 : !right && !up ? 3 : 4
}
