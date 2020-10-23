//
//  10816.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/23.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map(){Int(String($0))!}
let m = Int(readLine()!)!
let check = readLine()!.split(separator: " ").map(){Int(String($0))!}
var dict = [Int:Int]()
var result = [Int]()
for i in arr {
    if dict.keys.contains(i) {
        dict[i]! += 1
    }
    else {
        dict[i] = 1
    }
}
var ans = ""
for i in check {
    if dict.keys.contains(i) {
        result.append(dict[i]!)
    }
    else {
        result.append(0)
    }
}
for i in result {
    ans += String(i) + " "
}
print(ans)
