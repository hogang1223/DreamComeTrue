//
//  RelativeRanks.swift
//  LeetCode
//
//  Created by hogang on 2023/09/20.
//

import Foundation

// 506. Relative Ranks
struct RelativeRanks {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        let sortedDic = Dictionary(uniqueKeysWithValues:score.sorted(by: >).enumerated().map { ($1, $0) })
        return score.map {
            switch sortedDic[$0] {
            case 0:
                return "Gold Medal"
            case 1:
                return "Silver Medal"
            case 2:
                return "Bronze Medal"
            default:
                return String(sortedDic[$0]! + 1)
            }
        }
    }
}
