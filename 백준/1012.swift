//
//  1012.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/21.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let t = Int(readLine()!)!
var total = [[[Int]]]()
var total_vi = [[[Bool]]]()
var total_m = [Int]()
var total_n = [Int]()
for _ in 0..<t {
    let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
    let m = read[0]
    let n = read[1]
    let k = read[2]


    var arr = Array(repeating: Array(repeating: 0, count: m), count: n)
    for _ in 0..<k {
        let readline = readLine()!.components(separatedBy: " ").map({Int($0)!})
        arr[readline[1]][readline[0]] = 1
    }
    total.append(arr)
    let visited = Array(repeating: Array(repeating: false, count: m), count: n)
    total_vi.append(visited)
    total_m.append(m)
    total_n.append(n)
}




let dx = [ -1, 0, 1, 0 ]
let dy = [ 0, -1, 0, 1 ]
var count = 0
var result = [Int]()
var ans = [Int]()

func dfs(x: Int, y: Int, arr: [[Int]], a: Int) {
    count += 1
    total_vi[a][x][y] = true
    for i in 0..<dx.count {
        let nx = dx[i] + x
        let ny = dy[i] + y

        if nx > -1 && nx < total_n[a] && ny > -1 && ny < total_m[a] {
            if arr[nx][ny] == 1 && !total_vi[a][nx][ny] {
                dfs(x: nx, y: ny, arr: arr, a: a)
            }
        }
    }
}

for a in 0..<t {
    result.removeAll()
    for i in 0..<total_n[a] {
        for j in 0..<total_m[a] {
            if total[a][i][j] == 1 && !total_vi[a][i][j] {
                count = 0
                dfs(x: i, y: j, arr: total[a], a: a)
                result.append(count)
            }

        }
    }
    ans.append(result.count)
}

for i in ans {
    print(i)
}
