//
//  TallerThanMussuch.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 머쓱이보다 키 큰 사람

func TallerThanMussuch(_ array:[Int], _ height:Int) -> Int {
    var heightList = array
    heightList.append(height)
    heightList = heightList.sorted(by: >)
    return heightList.firstIndex(of: height) ?? 0
}
