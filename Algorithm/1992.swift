//
//  1992.swift
//  Algorithm
//
//  Created by gnksbm on 2023/12/02.
//

import Foundation

private func solution() {
    func slice(arr: [String]) -> String {
        guard arr.contains(
            where: { row in
                row.contains { pixel in
                    pixel != arr.first!.first!
                }
            }
        ) else { return "\(arr.first!.first!)" }
        guard arr.count > 0 else {
            return arr.map { row in
                row.contains { pixel in
                    pixel != row.first!
                } ? "(\(row))" : "\(row.first!)"
                
            }.joined()
        }
        let leftTop = arr[0..<arr.count / 2].map { String($0.prefix(arr.count / 2)) }
        let rightTop = arr[0..<arr.count / 2].map { String($0.suffix(arr.count / 2)) }
        let leftBtm = arr[arr.count / 2..<arr.count].map { String($0.prefix(arr.count / 2)) }
        let rightBtm = arr[arr.count / 2..<arr.count].map { String($0.suffix(arr.count / 2)) }
        var result = ""
        result.append("(")
        result.append(slice(arr: leftTop))
        result.append(slice(arr: rightTop))
        result.append(slice(arr: leftBtm))
        result.append(slice(arr: rightBtm))
        result.append(")")
        return result
    }
    let count = Int(readLine()!)!
    var input: [String] = []
    (0..<count).forEach { _ in input.append(readLine()!) }
    print(slice(arr: input))
}
