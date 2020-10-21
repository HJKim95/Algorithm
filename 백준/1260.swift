//
//  1260.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/21.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let readline = readLine()!.components(separatedBy: " ").map({Int($0)!})
let n = readline[0]
let m = readline[1]
let v = readline[2]

var arr = Array(repeating: [Int](), count: n+1)
for _ in 0..<m {
    let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
    arr[read[0]].append(read[1])
    arr[read[1]].append(read[0])
}
for i in 0..<arr.count {
    arr[i] = arr[i].sorted(by: {$0 < $1})
}

var visited_d = Array(repeating: false, count: n+1)
var visited_b = Array(repeating: false, count: n+1)
var result_dfs = [Int]()
var result_bfs = [Int]()

func dfs(v: Int) {
    result_dfs.append(v)
    visited_d[v] = true
    for i in arr[v] {
        if !visited_d[i] {
            dfs(v: i)
        }
    }
}

func bfs(v: Int) {
    var queue = [v]
    while queue.count > 0 {
        let first = queue.first!
        result_bfs.append(first)
        queue.removeFirst()
        visited_b[first] = true
        for i in arr[first] {
            if !visited_b[i] {
                visited_b[i] = true
                queue.append(i)
            }
        }
    }
}

dfs(v: v)
bfs(v: v)

var result_d = ""
for i in 0..<result_dfs.count {
    result_d += String(result_dfs[i])
    if i != result_dfs.count-1 {
        result_d += " "
    }
    
}
var result_b = ""
for i in 0..<result_bfs.count {
    result_b += String(result_bfs[i])
    if i != result_bfs.count-1 {
        result_b += " "
    }
    
}
