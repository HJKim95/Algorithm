//
//  1427.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/11/11.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
let n = readLine()!
var arr = Array(n)
arr = arr.sorted(by: >)
var result = ""
for i in arr {
    result += String(i)
}
print(result)
