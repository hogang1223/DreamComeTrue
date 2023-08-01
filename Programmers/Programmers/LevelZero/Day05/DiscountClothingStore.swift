//
//  DiscountClothingStore.swift
//  Programmers
//
//  Created by hogang on 2023/08/01.
//

import Foundation

// 옷가게 할인받기
func discountClothingStore(_ price:Int) -> Int {
    /*
     머쓱이네 옷가게는 10만 원 이상 사면 5%, 30만 원 이상 사면 10%, 50만 원 이상 사면 20%를 할인해줍니다.
     구매한 옷의 가격 price가 주어질 때, 지불해야 할 금액을 return 하도록 solution 함수를 완성해보세요.
     */
    let dobulePrice = Double(price)
    return  Int(dobulePrice >= 500000 ? (dobulePrice * 0.8) : dobulePrice >= 300000 ? (dobulePrice * 0.9) : dobulePrice >= 100000 ? (dobulePrice * 0.95) : dobulePrice)
}
