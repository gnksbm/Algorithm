//
//  2164.swift
//  Algorithm
//
//  Created by gnksbm on 10/25/24.
//

import Foundation

private func solution() {
    struct QueuePointer<T> {
      private var elements: [T] = []
      private var front = 0

      var isEmpty: Bool {
        elements.count < front + 1
      }

      var count: Int {
        elements.count - front
      }

      func peek() -> T? {
        front < elements.count ? elements[front] : nil
      }

      mutating func enqueue(with element: T) {
        elements.append(element)
      }

      @discardableResult
      mutating func dequeue() -> T? {
        if !isEmpty {
          defer { front += 1 }
          return elements[front]
        } else {
          return nil
        }
      }
    }

    var queue = QueuePointer<Int>()
    (1...Int(readLine()!)!).forEach { queue.enqueue(with: $0) }
    while queue.count > 1 {
        queue.dequeue()
        if queue.count > 1, let last = queue.dequeue() {
            queue.enqueue(with: last)
        }
    }
    print(queue.dequeue()!)
}
