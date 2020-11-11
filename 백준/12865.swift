//
//  12865.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/11.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
let n = read[0]
let k = read[1]

var arr = Array(repeating: Array(repeating: 0, count: k+1), count: n)
var items = [[Int]]()
for _ in 0..<n {
    let readline = readLine()!.components(separatedBy: " ").map({Int($0)!})
    items.append([readline[0],readline[1]])
}

for i in 0..<n {
    for j in 0..<k+1 {
        if i == 0 {
            if items[i][0] <= j {
                arr[i][j] = items[i][1]
//                continue
            }
        }
        else {
            if items[i][0] <= j {
                arr[i][j] = max(arr[i-1][j], items[i][1]+arr[i-1][j-items[i][0]])
            }
            else {
                arr[i][j] = arr[i-1][j]
            }
        }
        
    }
}
print(arr[n-1][k])
