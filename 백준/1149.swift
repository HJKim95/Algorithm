//
//  1149.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/28.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var cost = Array(repeating: [Int](), count: n)
for i in 0..<n {
    let readline = readLine()!.components(separatedBy: " ").map(){Int(String($0))!}
    cost[i] = readline
}

var dp = Array(repeating: Array(repeating: 0, count: 3), count: n+1)

for i in 1..<n+1 {
    dp[i][0] = min(dp[i-1][1],dp[i-1][2]) + cost[i-1][0]
    dp[i][1] = min(dp[i-1][0],dp[i-1][2]) + cost[i-1][1]
    dp[i][2] = min(dp[i-1][0],dp[i-1][1]) + cost[i-1][2]
}

print(dp[n].min()!)
