//
//  11054.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/30.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map(){Int(String($0))!}
var dp = Array(repeating: 1, count: arr.count)

for i in 1..<arr.count {
    for j in 0..<i {
        if arr[j] < arr[i] {
            dp[i] = max(dp[i],dp[j] + 1)
        }
    }
}

var reverse_dp = Array(repeating: 1, count: arr.count)
for i in 1..<arr.count {
    for j in 0..<i {
        if arr[arr.count-1-j] < arr[arr.count-i-1] {
            reverse_dp[arr.count-i-1] = max(reverse_dp[arr.count-i-1],reverse_dp[arr.count-1-j] + 1)
        }
    }
}

for i in 0..<dp.count {
    dp[i] += reverse_dp[i]
}
print(dp.max()!-1)
