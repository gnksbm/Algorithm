//
//  14467.swift
//  Algorithm
//
//  Created by gnksbm on 7/3/24.
//

import Foundation

private func solution() {
    let cows = Int(readLine()!)!
    var input = [String]()
    (0..<cows).forEach { _ in input.append(readLine()!) }
    var count = 0
    var dic = [String: String]()
    input.forEach {
        let splitedStr = $0.split(separator: " ").map { String($0) }
        if dic[splitedStr[0]] != nil,
           dic[splitedStr[0]] != splitedStr[1] {
            count += 1
        }
        dic[splitedStr[0]] = splitedStr[1]
    }
    print(count)
}
