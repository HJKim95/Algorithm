//
//  1912.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/05.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
//10
//10 -4 3 1 5 6 -35 12 21 -1
let n = Int(readLine()!)!
let num = readLine()!.components(separatedBy: " ").map(){Int(String($0))!}

var dp = Array(repeating: 0, count: n)
dp[0] = num[0]
var result = dp[0]
for i in 1..<num.count {
    dp[i] = max(dp[i-1]+num[i],num[i])
    result = max(dp[i],result)
}

print(result)
