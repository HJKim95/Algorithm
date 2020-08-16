//
//  main.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/08/16.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation

//MARK: -greedy1_p.87
/*
let readLines = readLine()!
var returns = Int(readLines)!

var resultArr = [Int]()
resultArr.append(returns/500)

returns -= (resultArr[0] * 500)

resultArr.append(returns/100)

returns -= (resultArr[1] * 100)

resultArr.append(returns/50)

returns -= (resultArr[2] * 50)

resultArr.append((returns/10))

print("거스름돈 결과")
print("500원: ", resultArr[0])
print("100원: ", resultArr[1])
print("50원: ", resultArr[2])
print("10원: ", resultArr[3])
 */

//MARK: -greedy2_p.92
/*
let readLines = readLine()!
let lineArr = readLines.components(separatedBy: " ")
let n = lineArr[0]
let m = lineArr[1]
let k = lineArr[2]

let readLines2 = readLine()!
let lineArr2 = readLines2.components(separatedBy: " ")
var numArr = [Int]()
for num in lineArr2 {
    numArr.append(Int(num)!)
}

let sortedNum = numArr.sorted(by: >)
var indexCount = 0
var index = 0
var count = 0
var goNext = false
var resultArr = [Int]()
while count < Int(m)! {
    resultArr.append(sortedNum[index])
    indexCount += 1
    count += 1
    if goNext {
        goNext = false
        indexCount = 0
        index = 0
    }
    if indexCount == Int(k)! {
        indexCount = 0
        index += 1
        goNext = true
    }
}
print(resultArr)
var resultSum = 0
for num in resultArr {
    resultSum += num
}
print(resultSum)
 */

//MARK: -greedy3_p.96
/*
let readLines = readLine()!
let lineArr = readLines.components(separatedBy: " ")

var arr = [Int]()
var maxArr = [Int]()

for _ in 0..<Int(lineArr[0])! {
    let readLines2 = readLine()!
    let lineArr2 = readLines2.components(separatedBy: " ")
    for i in lineArr2 {
        arr.append(Int(i)!)
        if arr.count == lineArr2.count {
            maxArr.append(arr.min()!)
            arr.removeAll()
        }
    }
}
print(maxArr.max()!)
 */

