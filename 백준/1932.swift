//
//  1932.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/09/24.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var realArr = [[Int]]()
for _ in 0..<n {
    let readline = readLine()!
    let comp = readline.components(separatedBy: " ")
    var arr = [Int]()
    for i in 0..<comp.count {
        let int = Int(comp[i])!
        arr.append(int)
    }
    realArr.append(arr)
}

var dpArr = realArr
for i in 1..<dpArr.count {
    for j in 0..<dpArr[i].count {
        if j == 0 {
            dpArr[i][j] += dpArr[i-1][j]
        }
        else {
            let left = dpArr[i-1][j-1]
            var up = 0
            if j != dpArr[i].count - 1 {
                up = dpArr[i-1][j]
            }
            dpArr[i][j] += max(left, up)
        }
    }
}
print(dpArr.last!.max()!)
