//
//  9251.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/05.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
//ACAYKP
//CAPCAK
var n = Array(readLine()!)
var m = Array(readLine()!)

n.insert(contentsOf: " ", at: 0)
m.insert(contentsOf: " ", at: 0)

var max_v = 0
var arr = Array(repeating: Array(repeating: 0, count: n.count), count: m.count)
for i in 1..<m.count {
    for j in 1..<n.count {
        if n[j] == m[i] { //같으면 대각선 왼쪽+1
            arr[i][j] = arr[i-1][j-1] + 1
        }
        else { //다르면 max(왼쪽,위쪽)
            arr[i][j] = max(arr[i][j-1], arr[i-1][j])
        }
        max_v = max(max_v,arr[i][j])
    }
}

print(max_v)
