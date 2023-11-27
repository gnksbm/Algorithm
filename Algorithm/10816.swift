//
//  10816.swift
//  Algorithm
//
//  Created by gnksbm on 2023/11/27.
//

private func solution() {
    _ = readLine()!
    let myCards = readLine()!.split(separator: " ").map { String($0) }
    _ = readLine()!
    let suggestCards = readLine()!.split(separator: " ").map { String($0) }
    var result = [String: Int]()

    myCards.forEach { sug in
        result[sug, default: 0] += 1
    }

    print(
        suggestCards.map { String(result[$0] ?? 0) }.joined(separator: " ")
    )
}

private func solution2() {
    var result = [String: Int]()
    _ = readLine()
    readLine()!.split(separator: " ").forEach {
        result[String($0), default: 0] += 1
    }
    _ = readLine()
    print(readLine()!.split(separator: " ").map { String(result[String($0)] ?? 0) }.joined(separator: " "))
}
