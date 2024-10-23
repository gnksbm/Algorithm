//
//  1302.swift
//  Algorithm
//
//  Created by gnksbm on 10/23/24.
//

import Foundation

private func solution() {
    var dic = [String: Int]()
    (1...Int(readLine()!)!).forEach { _ in dic[readLine()!, default: 0] += 1 }
    var top = 0
    var result = ""
    dic.forEach { key, value in
        if value > top {
            result = key
            top = value
        } else if value == top {
            if key < result {
                result = key
            }
        }
    }
    print(result)
}
