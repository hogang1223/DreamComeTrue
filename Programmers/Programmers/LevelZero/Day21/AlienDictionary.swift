//
//  AlienDictionary.swift
//  Programmers
//
//  Created by hogang on 2023/09/07.
//

import Foundation

// 외계어 사전
func AlienDictionary(_ spell:[String], _ dic:[String]) -> Int {
    var result = dic
    spell.forEach { s in
        result = result.filter {
            $0.contains(s)
        }
    }
    return result.count > 0 ? 1 : 2
}
