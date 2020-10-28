//
//  27489.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/28.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)
var saveNum = Array(repeating: -1, count: 91)
func fibo(n: Int) -> Int {
    if saveNum[n] != -1 {
        return saveNum[n]
    }
    if n == 0 {
        saveNum[n] = 0
        return 0
    }
    else if n == 1 {
        saveNum[n] = 1
        return 1
    }
    else {
        saveNum[n] = fibo(n: n-1)+fibo(n: n-2)
        return fibo(n: n-1)+fibo(n: n-2)
    }
}

let result = fibo(n: n!)
print(result)
