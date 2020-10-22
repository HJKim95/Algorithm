//
//  7576\.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/22.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
let m = read[0]
let n = read[1]

var graph = [[Int]]()

var count = 0
var queue = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
for j in 0..<n {
    let readline = readLine()!.components(separatedBy: " ").map({Int($0)!})
    for i in 0..<readline.count {
        if readline[i] == 1 {
            queue.append([j,i])
        }
        else if readline[i] == 0 {
            count += 1
        }
    }
    graph.append(readline)
}

let dx = [1,-1,0,0]
let dy = [0,0,1,-1]
var max_v = 0
var count2 = 0
func bfs() {
    while queue.count > 0 {
        let first = queue.first!
        queue.removeFirst()
        let first_x = first[0]
        let first_y = first[1]
        for i in 0..<4 {
            let nx = dx[i] + first_x
            let ny = dy[i] + first_y
            
            if nx > -1 && nx < n && ny > -1 && ny < m {
                if graph[nx][ny] == 0 {
                    queue.append([nx,ny])
                    count2 += 1
                    graph[nx][ny] = graph[first_x][first_y] + 1
                    max_v = max(max_v,graph[nx][ny])
                }
            }
        }
    }
}

if count == 0 {
    print(0)
}
else {
    bfs()
    if count == count2 {
        print(max_v-1)
    }
    else {
        print(-1)
    }
    
}
