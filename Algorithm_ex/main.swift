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

//MARK: -greedy4
/*
let readLines = readLine()!
let lineArr = readLines.components(separatedBy: " ")
var N = Int(lineArr[0])!
let K = Int(lineArr[1])!
var count = 0
while true {
    if N % K == 0 {
        N = N / K
        count += 1
    }
    else {
        N -= 1
        count += 1
    }
    if N == 1 {
        break
    }
}
print(count)
*/

//MARK: -Guhyun1_p.110
/*
let readLines = readLine()!
let n = Int(readLines)!
let readLines2 = readLine()!
let lineArr = readLines2.components(separatedBy: " ")
var x = 1
var y = 1

for direction in lineArr {
    switch direction {
    case "L":
        if y != 1 {
            y -= 1
        }
    case "R":
        if y != n {
            y += 1
        }
    case "U":
        if x != 1 {
            x -= 1
        }
    case "D":
        if x != n {
            x += 1
        }
    default:
        print("direction error")
    }
}

print(x, y)
*/

//MARK: -Guhyun2_p.113
/*
let readLines = readLine()!
let n = Int(readLines)!
var count = 0
for i in 0..<n+1 {
    for j in 0..<60 {
        for k in 0..<60 {
            let stringTime = "\(i)\(j)\(k)"
            if stringTime.contains("3") {
                count += 1
            }
        }
    }
}
print(count)
*/

//MARK: -Guhyun3_p.115
/*
let col = ["a","b","c","d","e","f","g","h"]
let row = [1,2,3,4,5,6,7,8]

let readLines = readLine()!
let readCol = String(readLines.first!)
let readRow = Int(String(readLines.last!))!

var colIndex = 0
let rowIndex = readRow - 1
for i in 0..<col.count {
    if col[i] == readCol {
        colIndex = i
    }
}

var count = 0

let colSum = [2,2,-2,-2,1,1,-1,-1,1,-1,1,-1,2,-2,2,-2]


for index in 0..<8 {
    let plusCol = colIndex + colSum[index]
    let plusRow = rowIndex + colSum[index+8]
    if plusCol > -1 && plusRow > -1 {
        if plusCol < 8 && plusRow < 8 {
            count += 1
        }
    }
    
}

print(count)
*/

//MARK: -Guhyun4_p.118
//
//let readLines = readLine()!
//let lineArr = readLines.components(separatedBy: " ")
//let row = Int(lineArr[0])!
//let col = Int(lineArr[1])!
//
//let readLines2 = readLine()!
//let lineArr2 = readLines2.components(separatedBy: " ")
//var a = Int(lineArr2[0])!
//var b = Int(lineArr2[1])!
//let direction = Int(lineArr2[2])!
//
//var totalArr = [[Int]]()
//for _ in 0..<row {
//    let readLines = readLine()!
//    let lineArrs = readLines.components(separatedBy: " ")
//    var arr = [Int]()
//    for j in 0..<lineArrs.count {
//        arr.append(Int(lineArrs[j])!)
//    }
//    totalArr.append(arr)
//}
//
//print(totalArr)
//var count = 0
//while true {
//    if direction == 0 {
//        a -= 1
//        if totalArr[a][b] == 1 {
//            b -= 1
//            if totalArr[a][b] == 0 {
//                count += 1
//            }
//        }
//        else {
//            count += 1
//            b -= 1
//        }
//
//    }
//}
