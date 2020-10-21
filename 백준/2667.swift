//
//  2667.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/21.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var graph = [[Character]]()
for _ in 0..<n {
    let readline = Array(readLine()!)
    graph.append(readline)
}
var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
for i in 0..<graph.count {
    for j in 0..<graph[i].count {
        arr[i][j] = Int(String(graph[i][j]))!
    }
}

var visited = Array(repeating: Array(repeating: false, count: n), count: n)
let dx = [ -1, 0, 1, 0 ]
let dy = [ 0, -1, 0, 1 ]
var count = 0
var result = [Int]()
func dfs(x: Int, y: Int) {
    count += 1
    visited[x][y] = true
    for i in 0..<dx.count {
        let nx = dx[i] + x
        let ny = dy[i] + y

        if nx > -1 && nx < n && ny > -1 && ny < n {
            if arr[nx][ny] == 1 && !visited[nx][ny] {
//                array[nx][ny] = 2
                dfs(x: nx, y: ny)
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i][j] == 1 && !visited[i][j] {
            count = 0
            dfs(x: i, y: j)
            result.append(count)
        }

    }
}

result = result.sorted()
print(result.count)
for i in result {
    print(i)
}
