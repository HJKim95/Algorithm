//
//  12016.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/28.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
extension String { // 백준에서 시간초과를 해결하기 위함.
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


let n = Int(readLine()!)
var arr = readLine()!.input()

var result = [arr[0]]

func checkLowerBound(array: Array<Int>, target: Int, start: Int, end: Int) -> Int {
    if start > end {
        return end+1
    }
    let mid = (start + end) / 2
    if array[mid] == target {
        return mid
    }
    
    else if array[mid] > target {
        return checkLowerBound(array: array, target: target, start: start, end: mid - 1)
    }
    else {
        return checkLowerBound(array: array, target: target, start: mid + 1, end: end)
    }
}



for i in 1..<arr.count {
    if arr[i] > result.last! {
        result.append(arr[i])
    }
    else if arr[i] < result.last! {
        let index = checkLowerBound(array: result, target: arr[i], start: 0, end: result.count-1)
        result.remove(at: index)
        result.insert(arr[i], at: index)
    }
}
print(result.count)
