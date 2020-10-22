//
//  2178.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/22.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
let n = read[0]
let m = read[1]
var graph = [[Int]]()
for _ in 0..<n {
    let readline = Array(readLine()!)
    var arr = [Int]()
    for i in 0..<readline.count {
        arr.append(Int(String(readline[i]))!)
    }
    graph.append(arr)
}
var check = Array(repeating: Array(repeating: 0, count: m), count: n)
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
let dx = [1,-1,0,0]
let dy = [0,0,1,-1]

func bfs(){
    var queue = [[0,0]]
    visited[0][0] = true
    while queue.count > 0 {
        let first = queue.first!
        queue.removeFirst()
        for i in 0..<4 {
            let nx = dx[i] + first[0]
            let ny = dy[i] + first[1]

            if nx > -1 && nx < n && ny > -1 && ny < m {
                if graph[nx][ny] == 1 && !visited[nx][ny] && check[nx][ny] == 0 {
                    queue.append([nx,ny])
                    visited[nx][ny] = true
                    check[nx][ny] = check[first[0]][first[1]] + 1
                    
                }
            }
        }
    }
}

bfs()
print(check[n-1][m-1] + 1)
