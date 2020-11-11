//
//  10814.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/11.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = [[String]]()
var dict = [Int: [String]]()
for _ in 0..<n {
    let read = readLine()!.components(separatedBy: " ")
    if dict[Int(read[0])!] != nil {
        dict[Int(read[0])!]!.append(read[1])
    }
    else {
        dict[Int(read[0])!] = [read[1]]
    }
}
var keys = dict.keys.sorted()
for i in keys {
    for j in 0..<dict[i]!.count {
        print(i,dict[i]![j])
    }
}
