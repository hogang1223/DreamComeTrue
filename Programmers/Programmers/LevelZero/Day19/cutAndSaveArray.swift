//
//  cutAndSaveArray.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/30.
//

import Foundation

// 잘라서 배열로 저장하기
func cutAndSaveArray(_ my_str:String, _ n:Int) -> [String] {
    var copyStr = my_str
    return Array(0...((my_str.count - 1) / n)).map { _ in
        let endIndex = copyStr.count > n ? copyStr.index(copyStr.startIndex, offsetBy: n) : copyStr.endIndex
        let range = copyStr.startIndex..<endIndex
        let save = String(copyStr[range])
        copyStr.removeSubrange(range)
        return save
    }
}