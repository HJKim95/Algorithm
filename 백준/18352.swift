//
//  18352.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/07.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation

let readline = readLine()!
let comp = readline.components(separatedBy: " ")
let n = Int(comp[0])!
let m = Int(comp[1])!
let k = Int(comp[2])!
let x = Int(comp[3])!

var graph: [[Int]] = Array(repeating: [], count: n+1)

for _ in 0..<m {
    let read = readLine()!.split{ $0 == " "}
    let a = Int(read[0])!
    let b = Int(read[1])!
    graph[a].append(b)
}

var visited = Array(repeating: false, count: graph.count)
var distance:[Int] = Array(repeating: 0, count: graph.count)

var result = [Int]()

func bfs(v: Int) {
    var queue = [v]
    while queue.count > 0 {
        let first = queue.first
        visited[v] = true
        distance[v] = 0
        queue.removeFirst()
        if distance[first!] < k {
            for i in graph[first!] {
                if !visited[i] {
                    visited[i] = true
                    distance[i] = distance[first!] + 1
                    if distance[i] < k {
                        queue.append(i)
                    }
                    else if distance[i] == k {
                        result.append(i)
                    }
                }
            }
        }
    }
}

bfs(v: x)


if result.count == 0 {
    print(-1)
}
else {
    for i in result {
        print(i)
    }
}
