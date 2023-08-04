//
//  ChangeIndex.swift
//  Programmers
//
//  Created by johyokyeong on 2023/08/04.
//

import Foundation

// 인덱스 바꾸기

func ChangeIndex(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var myStringArray = Array(my_string).map { String($0) }
    let num1Value = myStringArray[num1]
    let num2Value = myStringArray[num2]
    myStringArray.remove(at: num1)
    myStringArray.insert(num2Value, at: num1)
    myStringArray.remove(at: num2)
    myStringArray.insert(num1Value, at: num2)
    return myStringArray.joined()
}
