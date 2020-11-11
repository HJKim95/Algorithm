//
//  10989.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/11.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 10001)
for _ in 0..<n {
    let read = Int(readLine()!)!
    arr[read] += 1
}

for i in 1..<arr.count {
    for _ in 0..<arr[i] {
        print(i)
    }
}
