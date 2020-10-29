//
//  10844.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/29.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: 10), count: 101)
for i in 1..<10 {
    arr[1][i] = 1
}

for i in 2..<n+1 {
    for j in 0..<10 {
        if j == 0 {
            arr[i][j] = arr[i-1][1]%1000000000
        }
        else if j == 9 {
            arr[i][j] = arr[i-1][8]%1000000000
        }
        else {
            arr[i][j] = (arr[i-1][j-1] + arr[i-1][j+1])%1000000000
        }
    }
}
var result = 0
for i in 0..<10 {
    result += arr[n][i]
}
print(result%1000000000)
