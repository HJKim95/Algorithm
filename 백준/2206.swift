//
//  2206.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/23.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
let n = read[0]
let m = read[1]
var graph = [[Int]]()

var check = Array(repeating: Array(repeating: Array(repeating: 0, count: 2), count: m), count: n)
for _ in 0..<n {
    let readline = Array(readLine()!)
    var arr = [Int]()
    for j in 0..<readline.count {
        arr.append(Int(String(readline[j]))!)
    }
    graph.append(arr)
}

let dx = [1,-1,0,0]
let dy = [0,0,1,-1]

var min_v = 987654321

func dfs() {
    var queue = [[0,0,0]]
    check[0][0][0] = 1
    while queue.count > 0 {
        let first = queue.first!
        queue.removeFirst()
        if first == [n-1,m-1,0] || first == [n-1,m-1,1] {
            if check[n-1][m-1][first[2]] > 0 {
                min_v = min(min_v, check[n-1][m-1][first[2]])
            }
            break
        }
        for i in 0..<4 {
            let nx = dx[i] + first[0]
            let ny = dy[i] + first[1]
            if nx > -1 && nx < n && ny > -1 && ny < m {
                if check[nx][ny][first[2]] == 0 && graph[nx][ny] == 0 {
                    queue.append([nx,ny,first[2]])
                    check[nx][ny][first[2]] = check[first[0]][first[1]][first[2]] + 1
                }
                if first[2] == 0 && graph[nx][ny] == 1 && check[nx][ny][first[2]] == 0{
                    queue.append([nx,ny,1])
                    check[nx][ny][1] = check[first[0]][first[1]][first[2]] + 1
                }
            }
        }
    }
}

dfs()
if min_v == 987654321 {
    print(-1)
}
else {
    print(min_v)
}
