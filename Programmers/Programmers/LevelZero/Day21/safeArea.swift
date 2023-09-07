//
//  safeArea.swift
//  Programmers
//
//  Created by hogang on 2023/09/07.
//

import Foundation

// 안전지대
func safeArea(_ board:[[Int]]) -> Int {
    var unSafeAreaList: Set<Array<Int>> = []
        
    for xIndex in board.indices {
        for yIndex in board[xIndex].indices {
            if board[xIndex][yIndex] == 1 {
                unSafeAreaList.insert([xIndex - 1, yIndex - 1])
                unSafeAreaList.insert([xIndex - 1, yIndex])
                unSafeAreaList.insert([xIndex - 1, yIndex + 1])
                unSafeAreaList.insert([xIndex, yIndex - 1])
                unSafeAreaList.insert([xIndex, yIndex])
                unSafeAreaList.insert([xIndex, yIndex + 1])
                unSafeAreaList.insert([xIndex + 1, yIndex - 1])
                unSafeAreaList.insert([xIndex + 1, yIndex])
                unSafeAreaList.insert([xIndex + 1, yIndex + 1])
            }
        }
    }
    let remove = unSafeAreaList.filter {
            return $0[0] >= 0 && $0[0] < board.count && $0[1] >= 0 && $0[1] < board[0].count
        }.count
    return board.count * board[0].count - remove
}
