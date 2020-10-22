//
//  1697.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/22.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
let n = read[0]
let k = read[1]

var check = Array(repeating: 0, count: 100001)
func bfs() {
    var queue = [n]
    while queue.count > 0 {
        let first = queue.first!
        queue.removeFirst()
        if first == k {
            print(check[first])
            break
        }
        for i in 0..<3 {
            var nx = first
            if i == 0 { // +1
                nx = first + 1
                if nx < 100001 && check[nx] == 0 {
                    queue.append(nx)
                    check[nx] = check[first] + 1
                }
            }
            else if i == 1 { // -1
                nx = first - 1
                if nx > -1 && nx < 100001 && check[nx] == 0 {
                    queue.append(nx)
                    check[nx] = check[first] + 1
                }
                
            }
            else if i == 2 { // *2
                nx = first * 2
                if nx < 100001 && check[nx] == 0 {
                    queue.append(nx)
                    check[nx] = check[first] + 1
                }
            }
        }
    }
}

bfs()
