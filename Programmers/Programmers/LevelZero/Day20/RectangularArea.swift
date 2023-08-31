//
//  RectangularArea.swift
//  Programmers
//
//  Created by hogang on 2023/08/31.
//

import Foundation

// 직사각형 넓이 구하기

func RectangularArea(_ dots:[[Int]]) -> Int {
    let x = dots.map { $0[0] }
    let y = dots.map { $0[1] }
    return (x.max()! - x.min()!) * (y.max()! - y.min()!)
}
