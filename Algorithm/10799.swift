//
//  10799.swift
//  Algorithm
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

private func solution() {
    var slice = 0
    var pipe = 0
    let input = readLine()!.map({ $0 })

    for index in 0..<input.count {
        if input[index] == "(" {
            if input[index+1] == ")" {
                slice += pipe
            } else {
                pipe += 1
            }
        } else if input[index] == ")" {
            if input[index-1] == ")" {
                pipe -= 1
                slice += 1
            }
        }
    }
    print(slice)
}

private func solution2() {
    enum Status {
        case append, lazer, end
    }

    var slice = 0
    var pipe = 0
    var tasks: [Status] = []
    let input = readLine()!.map({ $0 })

    for index in 0..<input.count {
        if input[index] == "(" {
            if input[index+1] == ")" {
                tasks.append(.lazer)
            } else {
                tasks.append(.append)
            }
        } else if input[index] == ")" {
            if input[index-1] == ")" {
                tasks.append(.end)
            }
        }
    }

    tasks.forEach {
        switch $0 {
        case .append:
            pipe += 1
        case .lazer:
            slice += pipe
        case .end:
            pipe -= 1
            slice += 1
        }
    }
    print(slice)
}

private func solution3() {
    let input = readLine()!.map { $0 }
    var pipe = 0
    var slice = 0
    for index in 0..<input.count {
        if input[index] == "(" { // add Pipe
            pipe += 1
        } else if input[index] == ")" {
            if input[index - 1] == "(", pipe > 0 { // slice
                pipe -= 1
                slice += pipe
            } else if input[index - 1] == ")" { // top pipe remove
                pipe -= 1
                slice += 1
            }
        }
    }
    print(slice)
}
