//
//  2309.swift
//  Algorithm
//
//  Created by gnksbm on 10/17/24.
//

import Foundation

private func solution() {
    var arr = (1...9).map { _ in Int(readLine()!)! }.sorted()
    var first = 0
    var second = 1
    let total = arr.reduce(0, { $0 + $1 })
    
outside:
    while true {
        let current = total - arr[first] - arr[second]
    inside:
        switch current {
        case ..<100:
            first += 1
            second = first + 1
        case 100 where first != second:
            break outside
        default:
            if second == arr.count - 1 {
                first += 1
                second = first + 1
                break inside
            }
            second += 1
            
        }
    }
    for index in 0..<arr.count {
        guard index != first, index != second else { continue }
        print(arr[index])
    }
}
