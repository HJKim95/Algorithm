//
//  1181.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/11.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = [String]()
for _ in 0..<n {
    let read = readLine()!
    arr.append(read)
}
arr = Array(Set(arr))
arr = arr.sorted(by: {($0.count,$0) < ($1.count,$1)})
for i in arr {
    print(i)
}
