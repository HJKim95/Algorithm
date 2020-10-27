//
//  2805.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/27.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
extension String { // 백준에서 시간초과 나는것 해결하기 위해 작성.
    func input() -> [Int] {
        var result: [Int] = []

        var isNegative = false
        var num = 0

        let minus = Character("-")
        let zero = Character("0").asciiValue!
        let space = Character(" ")

        for c in self+" " {
            if c == minus {
                isNegative.toggle()
            } else if c == space {
                num = isNegative ? -num : num

                result.append(num)

                num = 0
                isNegative = false

            } else {
                num *= 10
                num += Int(c.asciiValue!-zero)
            }
        }

        return result
    }
}
let read = readLine()!.input()
let n = read[0]
let m = read[1]
let arr = readLine()!.input()

func check(mid: Int) -> Int {
    var result = 0
    for i in arr {
        if i-mid > 0 {
            result += i-mid
        }
    }
    return result
}

func binary_search(start:Int,end:Int) -> Int {
    var start = start
    var end = end
    while start <= end {
        let mid = (start + end) / 2
        if check(mid: mid) < m {
            end = mid-1
        }
        else {
            start = mid+1
        }
    }
    return end
}

let result = binary_search(start: 0, end: arr.max()!)
print(result)
