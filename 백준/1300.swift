//
//  1300.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/27.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
let k = Int(readLine()!)!

var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
for i in 0..<n {
    for j in 0..<n {
        arr[i][j] = (i+1)*(j+1)
    }
}

func check(mid:Int) -> Int {
    var count = 0
    for i in 1..<n+1 {
        count += min(n,mid/i)
    }
    return count
}

var first = 1
var last = n*n

var result = 1
while first <= last {
    let mid = (first+last)/2
    if check(mid: mid) >= k {
        result = mid
        last = mid-1
    }
    else {
        first = mid+1
    }
}

print(result)
