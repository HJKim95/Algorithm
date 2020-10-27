//
//  10816.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/23.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation
extension String { //백준에서 시간초과 나는것 해결하기 위해..
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
let n = Int(readLine()!)!
var arr = readLine()!.input()
arr = arr.sorted()
let m = Int(readLine()!)!
let check = readLine()!.input()

func binarySearch_right(array: Array<Int>, target: Int, start: Int, end: Int) -> Int {
   if start > end {
       return -1
   }
   let mid = (start + end) / 2
   if (mid == array.count-1 || target < array[mid + 1]) && array[mid] == target {
       return mid
   }
   
   else if array[mid] > target {
       return binarySearch_right(array: array, target: target, start: start, end: mid - 1)
   }
   else {
       return binarySearch_right(array: array, target: target, start: mid + 1, end: end)
   }
}

func binarySearch_left(array: Array<Int>, target: Int, start: Int, end: Int) -> Int {
    if start > end {
        return -1
    }
    let mid = (start + end) / 2
    if (mid == 0 || target > array[mid - 1]) && array[mid] == target {
        return mid
    }
    
    else if array[mid] >= target {
        return binarySearch_left(array: array, target: target, start: start, end: mid - 1)
    }
    else {
        return binarySearch_left(array: array, target: target, start: mid + 1, end: end)
    }
}
var ans = ""
for i in check {
    let right = binarySearch_right(array: arr, target: i, start: 0, end: arr.count-1)
    let left = binarySearch_left(array: arr, target: i, start: 0, end: arr.count-1)
    var result = right-left+1
    if left == -1 && right == -1{
        result = 0
    }
    
    ans += String(result)
    ans += " "
}
print(ans)
