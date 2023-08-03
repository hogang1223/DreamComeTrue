//
//  Decryption.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/03.
//

import Foundation

// 암호 해독
func Decryption(_ cipher:String, _ code:Int) -> String {
    let indexs = Array(1...cipher.count).filter {
                $0 % code == 0
    }
    return indexs.map {
        String(Array(cipher)[$0 - 1])
    }.joined()
}
