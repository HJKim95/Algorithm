//
//  1654.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/26.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let read = readLine()!.split(separator: " ").map({Int(String($0))!})
let n = read[0]
let k = read[1]

var arr = [Int]()
for _ in 0..<n {
    let num = Int(readLine()!)!
    arr.append(num)
}

func check(mid: Int) -> Int {
    var result = 0
    for i in arr {
        result += i/mid
    }
    return result
}

func binary_search(start:Int,end:Int) -> Int {
    var start = start
    var end = end
    while start <= end {
        let mid = (start + end) / 2
        if check(mid: mid) < k {
            end = mid-1
        }
        else {
            start = mid+1
        }
    }
    return end
}

let t = binary_search(start: 0, end: arr.max()!)
print(t)
