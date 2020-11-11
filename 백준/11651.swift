//
//  11651.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/11.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = [[Int]]()
for _ in 0..<n {
    let read = readLine()!.components(separatedBy: " ").map({Int($0)!})
    arr.append([read[0],read[1]])
}
arr = arr.sorted(by: {($0[1],$0[0]) < ($1[1],$1[0])})
for i in arr {
    print(i[0],i[1])
}
