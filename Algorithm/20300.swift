//
//  20300.swift
//  Algorithm
//
//  Created by gnksbm on 7/12/24.
//

import Foundation

/*
 문제
 로니 콜먼 동영상을 보고 보디빌더가 되기로 결심한 향빈이는 PT 상담을 받으러 서강헬스클럽에 갔다. 향빈이가 서강헬스클럽을 선택한 이유는 PT를 받을 때 사용하는 운동기구를 회원이 선택할 수 있다는 점 때문이다. 하지만, 서강헬스클럽은 항상 사람이 많아서 PT를 한 번 받을 때 운동기구를 최대 두 개까지만 선택할 수 있다.

 헬스장에 있는 $N$개의 운동기구를 한 번씩 사용해보고 싶은 향빈이는 PT를 받을 때마다 이전에 사용하지 않았던 운동기구를 선택하기로 계획을 세웠다. 그리고 비용을 절약하기 위해 PT를 받을 때 운동기구를 되도록이면 두 개를 사용하기로 했다. 예를 들어, 헬스장에 총 $10$개의 운동기구가 있을 경우 PT를 $5$번 받으면 모든 기구를 다 사용할 수 있다. $9$개의 운동기구가 있는 경우에도 PT를 $5$번 받지만, 마지막 PT를 받을 때는 운동기구를 하나만 사용한다.

 하지만 향빈이는 운동기구를 선택하다가 큰 고민에 빠졌다. 왜냐하면 운동기구마다 근손실이 일어나는 정도가 다르기 때문이다. 어떤 운동기구는 자극이 잘 안 와서 근손실이 적게 일어나는데, 어떤 운동기구는 자극이 잘 와서 근손실이 많이 일어난다. 근손실이 죽음보다 무서운 향빈이는 PT를 한 번 받을 때의 근손실 정도가 $M$을 넘지 않도록 하고 싶다. 이때, $M$의 최솟값을 구해보자. 참고로, 운동기구를 두 개 사용해서 PT를 받을 때의 근손실 정도는 두 운동기구의 근손실 정도의 합이다.

 입력
 첫째 줄에 서강헬스클럽에 비치된 운동기구의 개수를 나타내는 정수 $N$이 주어진다. ($1 \leq N \leq 10\ 000$)

 둘째 줄에는 각 운동기구의 근손실 정도를 나타내는 정수 $t_1, t_2, \cdots, t_N$가 주어진다. ($0 \leq t_i \leq 10^{18}$)

 출력
  $M$의 최솟값을 출력한다.

 예제 입력 1
 5
 1 2 3 4 5
 예제 출력 1
 5
 */

private func solution() {
    _ = readLine()!
    var nums = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
        .sorted()
    var lossArr = [Int]()
    if nums.count % 2 == 0 {
        while !nums.isEmpty {
            let low = nums.removeFirst()
            let top = nums.removeLast()
            lossArr.append(low + top)
        }
    } else {
        let top = nums.removeLast()
        while !nums.isEmpty {
            let low = nums.removeFirst()
            let top = nums.removeLast()
            lossArr.append(low + top)
        }
        lossArr.append(top)
    }
    print(lossArr.max()!)
}
