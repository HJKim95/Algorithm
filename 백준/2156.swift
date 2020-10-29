//
//  2156.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/29.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = [Int]()
arr.append(0)
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
var save = Array(repeating: -1, count: arr.count)
func drink(n: Int) -> Int{
    if save[n] != -1 {
        return save[n]
    }
    if n == 1 {
        save[n] = arr[n]
        return arr[n]
    }
    else if n == 2 {
        save[n] = arr[n] + arr[n-1]
        return arr[n] + arr[n-1]
    }
    else if n == 3 {
        save[n] = max(arr[n] + max(arr[n-1], arr[n-2]), drink(n: n-1))
        return max(arr[n] + max(arr[n-1], arr[n-2]), drink(n: n-1))
    }
    else {
        save[n] = max(arr[n] + max(drink(n: n-2), drink(n: n-3)+arr[n-1]), drink(n: n-1))
        return max(arr[n] + max(drink(n: n-2), drink(n: n-3)+arr[n-1]), drink(n: n-1))
    }
}
let result = drink(n: n)
print(result)
