//
//  2110.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/27.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let read = readLine()!.components(separatedBy: " ").map(){Int(String($0))!}
let n = read[0]
let c = read[1]

var arr = [Int]()
for _ in 0..<n {
    let readline = Int(readLine()!)!
    arr.append(readline)
}
arr = arr.sorted()
var first = arr[1]-arr[0]
var last = arr[arr.count-1]-arr[0]

func check(mid:Int) -> Int{
    var start = arr[0]
    var count = 1
    for i in 1..<arr.count {
        if arr[i] >= start+mid {
            start = arr[i]
            count += 1
        }
    }
    return count
}
var result = 0
while first <= last {
    let mid = (first+last)/2
    if check(mid: mid) >= c {
        first = mid+1
        result = mid
    }
    else {
        last = mid-1
    }
}

print(result)
