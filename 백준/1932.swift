//
//  1932.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/28.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var graph = Array(repeating: [Int](), count: n)
for i in 0..<n {
    let readline = readLine()!.components(separatedBy: " ").map(){Int(String($0))!}
    graph[i] = readline
}

for i in 1..<graph.count {
    for j in 0..<graph[i].count {
        if j == 0 {
            graph[i][j] = graph[i-1][j] + graph[i][j]
        }
        else if j == graph[i].count-1 {
            graph[i][j] = graph[i-1][j-1] + graph[i][j]
        }
        else {
            graph[i][j] = max(graph[i-1][j-1], graph[i-1][j]) + graph[i][j]
        }
    }
}

print(graph.last!.max()!)
