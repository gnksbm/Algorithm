//
//  9012.swift
//  Algorithm
//
//  Created by gnksbm on 2023/11/29.
//

import Foundation

private func solution() {
    var psList = [String]()
    (1...Int(readLine()!)!).forEach { _ in
        psList.append(
            readLine()!
        )
    }
    psList.forEach { ps in
        guard ps.count % 2 == 0 else { print("NO"); return }
        let phantom = ps.map { $0 }
        var psCount = 0
        for index in 0..<ps.count {
            if phantom[index] == "(" {
                psCount += 1
            } else {
                guard psCount > 0 else { print("NO"); return }
                psCount -= 1
            }
        }
        print(psCount == 0 ? "YES" : "NO")
    }
}
