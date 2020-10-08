//
//  14888.swift
//  AlgorithmGAJA
//
//  Created by 김희중 on 2020/10/08.
//  Copyright © 2020 김희중. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.components(separatedBy: " ").map({Int(String($0))!})
var operators = readLine()!.components(separatedBy: " ").map({Int(String($0))!})

var max_v = -Int.max
var min_v = Int.max

func dfs(i: Int, now: Int) {
    if i == n {
        max_v = max(max_v,now)
        min_v = min(min_v,now)
    }
    else {
        if operators[0] > 0 {
            operators[0] -= 1
            dfs(i: i+1, now: now + nums[i])
            operators[0] += 1
        }
        if operators[1] > 0 {
            operators[1] -= 1
            dfs(i: i+1, now: now - nums[i])
            operators[1] += 1
        }
        if operators[2] > 0 {
            operators[2] -= 1
            dfs(i: i+1, now: now * nums[i])
            operators[2] += 1
        }
        if operators[3] > 0 {
            operators[3] -= 1
            dfs(i: i+1, now: now / nums[i])
            operators[3] += 1
        }
    }
}

dfs(i: 1, now: nums[0])

print(max_v)
print(min_v)
