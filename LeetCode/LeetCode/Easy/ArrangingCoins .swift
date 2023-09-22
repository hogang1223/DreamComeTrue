//
//  ArrangingCoins .swift
//  LeetCode
//
//  Created by hogang on 2023/09/22.
//

import Foundation

// 441. Arranging Coins
struct ArrangingCoins {
    func arrangeCoins(_ n: Int) -> Int {
        var left = 0, right = n
        while left <= right {
            let mid = (left + right) / 2
            let now = mid * (mid + 1) / 2
            if now == n { return mid }
            if now < n {
                left = mid + 1
            }
            else {
                right = mid - 1
            }
        }
        return right
    }
}
