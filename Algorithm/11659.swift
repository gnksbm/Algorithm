//
//  11659.swift
//  Algorithm
//
//  Created by gnksbm on 10/22/24.
//

import Foundation

private func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let times = input[1]
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    var acc = [0]
    for index in 0..<arr.count {
        acc.append(acc[index] + arr[index])
    }
    (1...times).forEach { _ in
        let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
        let start = temp[0]
        let end = temp[1]
        print(acc[end] - acc[start - 1])
    }
}
