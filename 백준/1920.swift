//
//  1920.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/23.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map({Int($0)!})
arr = arr.sorted()
let m = Int(readLine()!)!
let check = readLine()!.components(separatedBy: " ").map({Int($0)!})

func find(num: Int, start: Int, end: Int) -> Int {
    if start > end {
        return -1
    }
    let mid = (start + end)/2
    if num == arr[mid] {
        return mid
    }
    else if num > arr[mid] {
        return find(num: num, start: mid+1, end: end)
    }
    else {
        return find(num: num, start: start, end: mid-1)
    }
}

for i in check {
    let result = find(num: i, start: 0, end: arr.count-1)
    if result == -1 {
        print(0)
    }
    else {
        print(1)
    }
}
