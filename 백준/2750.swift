//
//  2750.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/11.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = Int(readLine()!)!
var arr = [Int]()
for _ in 0..<n {
    let read = Int(readLine()!)!
    arr.append(read)
}
arr = arr.sorted()
for i in arr {
    print(i)
}
