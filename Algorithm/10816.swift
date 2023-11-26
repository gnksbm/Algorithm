//
//  10816.swift
//  Algorithm
//
//  Created by gnksbm on 2023/11/27.
//

private func solution() {
    let n = readLine()!
    let myCards = readLine()!.split(separator: " ").map { String($0) }
    let m = readLine()!
    let suggestCards = readLine()!.split(separator: " ").map { String($0) }
    var result = [String: Int]()

    myCards.forEach { sug in
        result[sug, default: 0] += 1
    }

    print(
        suggestCards.map { String(result[$0] ?? 0) }.joined(separator: " ")
    )
}
