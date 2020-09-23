//
//  18428.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/09/23.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!
var totalArr = [[String]]()
var TeachArr = [[Int]]()
var XArr = [[Int]]()

for i in 0..<n {
    let readline = readLine()!
    let comp = readline.components(separatedBy: " ")
    for j in 0..<comp.count {
        if comp[j] == "T" {
            TeachArr.append([i,j])
        }
        else if comp[j] == "X" {
            XArr.append([i,j])
        }
    }
    totalArr.append(comp)
}

var find: Bool = false


func checkStudent(loc: [Int]) {
    //좌
    let x = loc[0]
    let y = loc[1]
    var lefty = y
    while lefty > -1 {
        if totalArr[x][lefty] == "O" {
            break
        }
        if totalArr[x][lefty] == "S" {
            find = true
            break
        }
        lefty -= 1
    }
    //우
    var righty = y
    while righty < totalArr.count {
        if totalArr[x][righty] == "O" {
            break
        }
        if totalArr[x][righty] == "S" {
            find = true
            break
        }
        righty += 1
    }
    //상
    var topx = x
    while topx > -1 {
        if totalArr[topx][y] == "O" {
            break
        }
        if totalArr[topx][y] == "S" {
            find = true
            break
        }
        topx -= 1
    }
    //하
    var bottomx = x
    while bottomx < totalArr.count {
        if totalArr[bottomx][y] == "O" {
            break
        }
        if totalArr[bottomx][y] == "S" {
            find = true
            break
        }
        bottomx += 1
    }
}

func combinations<T>(source: [T], takenBy : Int) -> [[T]] {
    if(source.count == takenBy) {
        return [source]
    }

    if(source.isEmpty) {
        return []
    }

    if(takenBy == 0) {
        return []
    }

    if(takenBy == 1) {
        return source.map { [$0] }
    }

    var result : [[T]] = []

    let rest = Array(source.suffix(from: 1))
    let subCombos = combinations(source: rest, takenBy: takenBy - 1)
    result += subCombos.map { [source[0]] + $0 }
    result += combinations(source: rest, takenBy: takenBy)
    return result
}


var realFind:Bool = false

let numbers = Array<Int>(0...XArr.count-1)
let combo = combinations(source: numbers, takenBy: 3)

for combo in combo {
    for i in combo {
        let xLoc = XArr[i]
        totalArr[xLoc[0]][xLoc[1]] = "O"
    }
    for i in TeachArr {
        checkStudent(loc: i)
    }
    
    if find == true {
        for i in combo {
            let xLoc = XArr[i]
            totalArr[xLoc[0]][xLoc[1]] = "X"
        }
        find = false
    }
    else if find == false {
        print("YES")
        realFind = true
        break
    }
}

if !realFind {
    print("NO")
}
