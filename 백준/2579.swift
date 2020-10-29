//
//  2579.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/28.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = [Int]()
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var save = Array(repeating: -1, count: n)

func steps(n: Int) -> Int {
    if n == 0 {
        return arr[0]
    }
    else if n == 1 {
        return arr[0]+arr[1]
    }
    else if n == 2 {
        return max(arr[0]+arr[2], arr[1]+arr[2])
    }
    if save[n] != -1 {
        return save[n]
    }
    let result = max(arr[n-1] + steps(n: n-3), steps(n: n-2)) + arr[n]
    save[n] = result
    return result
}
print(steps(n: n-1))
