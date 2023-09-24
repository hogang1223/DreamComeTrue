//
//  main.swift
//  LeetCode
//
//  Created by hogang on 2023/09/18.
//

import Foundation

let igcdll = InsertGreatestCommonDivisorsinLinkedList()


let head = igcdll.arrToNode(arr: [8])
let result =  igcdll.insertGreatestCommonDivisors(head)
let arr = igcdll.nodeToArray(node: result)
print(arr)
