//
//  14502.swift
//  Algorithm_ex
//
//  Created by 김희중 on 2020/10/07.
//  Copyright © 2020 HJ. All rights reserved.
//

import Foundation

let readline = readLine()!
let comp = readline.components(separatedBy: " ")
let n = Int(comp[0])!
let m = Int(comp[1])!

var graph = Array(repeating: Array(repeating: -1, count: m), count: n)

for i in 0..<n {
    let read = readLine()!.components(separatedBy: " ").map ({ Int(String($0))!})
    graph[i] = read
}

var saveSpace = [[Int]]()

for i in 0..<n {
    for j in 0..<m {
        if graph[i][j] == 0 {
            saveSpace.append([i,j])
        }
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

var saveZero = [[Int]]()

let dx = [ -1, 0, 1, 0 ]
let dy = [ 0, -1, 0, 1 ]

func dfs(x: Int, y: Int, array: inout [[Int]]) {
    for i in 0..<dx.count {
        let nx = dx[i] + x
        let ny = dy[i] + y
        
        if nx > -1 && nx < n && ny > -1 && ny < m {
            if array[nx][ny] == 0 {
                array[nx][ny] = 2
                dfs(x: nx, y: ny, array: &array)
            }
        }
    }
}

var maxSize = 0
var size = 0

func countSize(array: [[Int]]) -> Int{
    size = 0
    for i in 0..<n {
        for j in 0..<m {
            if array[i][j] == 0 {
                size += 1
            }
        }
    }
    return size
}

let combos = combinations(source: saveSpace, takenBy: 3)



for combo in combos {
    let a = combo[0]
    let b = combo[1]
    let c = combo[2]
    
    var arr = graph
    
    arr[a[0]][a[1]] = 1
    arr[b[0]][b[1]] = 1
    arr[c[0]][c[1]] = 1
    
    for i in 0..<n {
        for j in 0..<m {
            if arr[i][j] == 2 {
                dfs(x: i, y: j, array: &arr)
            }
            
        }
    }
    
    let size = countSize(array: arr)
    maxSize = max(maxSize, size)
    
    
    
}

print(maxSize)
