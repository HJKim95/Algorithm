//
//  2108.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/11.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = [Int]()
var count = 0 // 산술평균
var count_dict = [Int:Int]()
var max_v = 0
for _ in 0..<n {
    let read = Int(readLine()!)!
    count += read
    arr.append(read)
    if count_dict[read] != nil {
        count_dict[read]! += 1
    }
    else {
        count_dict[read] = 1
    }
    max_v = max(max_v,count_dict[read]!)
}

arr = arr.sorted()
let average = Int(round(Double(count)/Double(n)))
print(average)
print(arr[(n-1)/2])
var result = [Int]()
for i in count_dict.keys {
    if count_dict[i] == max_v {
        result.append(i)
    }
}
result = result.sorted()
if result.count > 1 {
    print(result[1])
}
else {
    print(result[0])
}
print(arr[arr.count-1]-arr[0])
