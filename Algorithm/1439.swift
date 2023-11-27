//
//  1439.swift
//  Algorithm
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

private func solution() {
    var result = 0
    let input = readLine()!.map { $0 }
    for i in 1..<input.count {
        if input[i] != input[i-1],
           input[i] != input.first! {
            result += 1
        }
    }
    print(result)
}
