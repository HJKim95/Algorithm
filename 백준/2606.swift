//
//  2606.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/21.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
let m = Int(readLine()!)!
var arr = Array(repeating: [Int](), count: n+1)
for _ in 0..<m {
    let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
    arr[read[0]].append(read[1])
    arr[read[1]].append(read[0])
}
for i in 0..<arr.count {
    arr[i] = arr[i].sorted(by: {$0 < $1})
}

var visited = Array(repeating: false, count: n+1)
func dfs(v: Int) {
    visited[v] = true
    for i in arr[v] {
        if !visited[i] {
            dfs(v: i)
        }
    }
}

dfs(v: 1)
var count = 0
for i in visited {
    if i {
        count += 1
    }
}
print(count-1)
