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

//func practiceDFS(n lastNode: Int, edges: [(Int, Int)]) -> Int {
//    var edgeInfo = [Int: Array<Int>]()
//
//    for edge in edges {
//        if var array = edgeInfo[edge.0] {
//            array.append(edge.1)
//            edgeInfo[edge.0] = array
//        }
//        else {
//            edgeInfo[edge.0] = [edge.1]
//        }
//    }
//
//    var result = 0
//    print(edgeInfo)
//    func dfs(node: Int, visited: [Int]) {
//        print(node,visited)
//        guard node != lastNode else {
////            print(node, visited)
//            print("**********finished**********")
//            result += 1
//            return
//        }
//        guard let neighbors = edgeInfo[node] else {return}
//        for edge in neighbors {
//            guard visited.contains(edge) == false else {continue}
////            print(edge,visited + [edge])
//            dfs(node: edge, visited: visited + [edge])
//        }
//    }
//
//    dfs(node: 1, visited: [1])
//
//    return result
//}
//
//print(practiceDFS(n: 5, edges: [(1, 2), (1, 3), (1, 4), (2, 1), (2, 4), (2, 5), (3, 2), (3, 4), (4, 5)]))


//extension Array {
//    var powerset: [[Element]] {
//        guard count > 0 else {
//            return [[]]
//        }
//
//        // tail contains the whole array BUT the first element
//        let tail = Array(self[1..<endIndex])
//
//        // head contains only the first element
//        let head = self[0]
//
//        // computing the tail's powerset
//        let withoutHead = tail.powerset
//
//        // mergin the head with the tail's powerset
//        let withHead = withoutHead.map { $0 + [head] }
//
//        // returning the tail's powerset and the just computed withHead array
//        return withHead + withoutHead
//    }
//}
//
//func getPowerset(arr: Array<Character>) -> [[Character]] {
//
//    if arr.count == 0 {
//        return [[]]
//    }
//
//    let head = arr[0]
//    let tail = Array(arr[1..<arr.endIndex])
//
//    let withoutHead = getPowerset(arr: tail)
//    let withHead = withoutHead.map { $0 + [head]}
//
//    return withHead + withoutHead
//}
//
////print(getPowerset(arr: ["a","b", "c", "d"]))
//
//var orders = ["xyz", "xwy", "wxa"]
//orders = orders.map { $0.uppercased() }
//let course = [2,3,4]
//
//var dict2 = [String:Int]()
//
//for i in orders {
//    let arr = Array(i)
//    print(arr)
//    for i in getPowerset(arr: arr) {
//        let sorts = String(i.sorted())
//        if dict2[sorts] == nil {
//            dict2[sorts] = 1
//        }
//        else {
//            dict2[sorts]! += 1
//        }
//    }
//    dict2.removeValue(forKey: "")
//    print(dict2)
//}
//
//var resultMax = [Int:Int]()
//
//for i in course {
//    for key in dict2.keys {
//        if key.count == i {
//            if resultMax[i] == nil {
//                resultMax[i] = dict2[key]!
//            }
//            else {
//                if dict2[key]! > resultMax[i]! {
//                    resultMax[i] = dict2[key]!
//                }
//            }
//        }
//    }
//}
//
//print(resultMax)
//
//var result = [String]()
//for i in course {
//
//    for key in dict2.keys {
//        if key.count == i {
//            if dict2[key] == resultMax[i] && resultMax[i]! > 1 {
//                result.append(key)
//            }
//        }
//    }
//}
//
//print(result)

//let graph = [[], [2,3,8], [1,7], [1,4,5], [3,5], [3,4],[7],[2,6,8],[1,7]]
//
//var visited = Array(repeating: false, count: graph.count)
//
//func dfs(v: Int) {
//    visited[v] = true
//    print(v, "end ' '")
//    for i in graph[v] {
//        if !visited[i] {
//            dfs(v: i)
//        }
//    }
//}
//
////dfs(v: 1)
//
//public struct Queue<T> {
//    fileprivate var array = [T]()
//
//    public var isEmpty: Bool {
//        return array.isEmpty
//    }
//
//    public var count: Int {
//        return array.count
//    }
//
//    public mutating func enqueue(_ element: T) {
//        array.append(element)
//    }
//
//    public mutating func dequeue() -> T? {
//        if isEmpty {
//            return nil
//        }
//        else {
//            return array.removeFirst()
//        }
//    }
//
//    public var front: T? {
//        return array.first
//    }
//}
//
//var visited2 = Array(repeating: false, count: graph.count)
//
//var queue = Queue<Int>()
//
//func bfs(start: Int) {
//    queue.enqueue(start)
//
//    visited2[start] = true
//    while !queue.isEmpty {
//        let v = queue.front
//        queue.dequeue()
//        print(v!, "end ' '", queue)
//        for i in graph[v!] {
//            if !visited2[i] {
//                queue.enqueue(i)
//                visited2[i] = true
//            }
//        }
//    }
//}
//
////bfs(start: 1)
//
//
////let miro = [[1,0,1,0,1,0], [1,1,1,1,1,1], [0,0,0,0,0,1], [1,1,1,1,1,1], [1,1,1,1,1,1]]
//
//let miro = [[1,1,1],[1,1,1],[1,1,1]]
//
//let dx = [-1,1,0,0]
//let dy = [0,0,-1,1]
//
//var queueArr = [[Int]]()
//
//var x = 0
//var y = 0
//
//func bfs() {
//    var newGraph = miro
//    if queueArr.count > 0 {
//        queueArr.removeFirst()
//    }
//    queueArr.append([x,y])
//
//    while queueArr.count > 0 {
//
//        x = queueArr.first![0]
//        y = queueArr.first![1]
//        queueArr.removeFirst()
//        for i in 0..<4 {
//            let nx = x + dx[i]
//            let ny = y + dy[i]
////            print(nx,ny)
//            if nx < 0 || ny < 0 || nx >= miro.count || ny >= miro[0].count {
//                continue
//            }
//            if newGraph[nx][ny] == 0 {
//                continue
//            }
//
//            if newGraph[nx][ny] == 1 {
//                newGraph[nx][ny] = newGraph[x][y] + 1
//                queueArr.append([nx,ny])
//                print(queueArr)
//            }
//        }
////        print(newGraph)
//    }
//
//}

//bfs()

//let readline = readLine()!
//let comp = readline.components(separatedBy: " ")
//let n = Int(comp[0])! //4
//let m = Int(comp[1])! //4
//let k = Int(comp[2])! //2
//let x = Int(comp[3])! //1
//
//var graph = Array(repeating: [], count: n+1)
//
//for _ in 0..<m {
//    let readline2 = readLine()!
//    let comp2 = readline2.components(separatedBy: " ")
//    graph[Int(comp2[0])!].append(Int(comp2[1])!)
//}
//
//var dist = Array(repeating: -1, count: n+1)
//dist[x] = 0
//
//var queueArr = [Int]()
//queueArr.append(x)
//
//while !queueArr.isEmpty {
//    let now = queueArr.first
//    print(now)
//    queueArr.removeFirst()
//
//    for next_node in graph[now!] {
//        print(next_node)
//        if dist[next_node as! Int] == -1 {
//            dist[next_node as! Int] = dist[now!] + 1
//            queueArr.append(next_node as! Int)
//        }
//    }
//}
//
//print(dist)


//var test = [[3, 0, 0, 0], [2, 0, 0, 2], [1, 0, 2, 0]]


//----------------------------------------------
//let readline = readLine()!
//let comp = readline.components(separatedBy: " ")
//let n = Int(comp[0])!
//let k = Int(comp[1])!
//
//var graph = Array(repeating: [], count: n)
//var data = [[Int]]()
//for i in 0..<n {
//    let readline2 = readLine()!
//    let comp2 = readline2.components(separatedBy: " ")
//    var arr = [Int]()
//    for j in 0..<comp2.count {
//        arr.append(Int(comp2[j])!)
//        if Int(comp2[j])! != 0 {
//            data.append([Int(comp2[j])!, 0, i ,j])
//        }
//    }
//    graph[i] = arr
//}
//
//let readline3 = readLine()!
//let comp3 = readline3.components(separatedBy: " ")
//let time = Int(comp3[0])!
//let x = Int(comp3[1])!
//let y = Int(comp3[2])!
////print(graph)
////print(data)
//let sortedArray = data.sorted { ($0[0]) < ($1[0]) }
////print(sortedArray)
//
//var queArr = sortedArray
//
//let dx = [-1,0,1,0]
//let dy = [0,1,0,-1]
//
//while !queArr.isEmpty {
//    let virus = queArr.first![0]
//    let s = queArr.first![1]
//    let x = queArr.first![2]
//    let y = queArr.first![3]
//    queArr.removeFirst()
//
//    if s == time {
//        break
//    }
//
//    for i in 0..<4 {
//        // 상하좌우 이동
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//
//        if nx >= 0 && nx < n && ny >= 0 && ny < n {
//            if graph[nx][ny] as! Int == 0 {
//                graph[nx][ny] = virus
//                queArr.append([virus, s+1, nx,ny])
//            }
//        }
//    }
//}
//
//print(graph[x-1][y-1])

//func binarySearch(array: Array<Int>, target: Int, start: Int, end: Int) -> Int {
//    if start > end {
//        return -1
//    }
//    let mid = (start + end) / 2
//    if (mid == 0 || target > array[mid - 1]) && array[mid] == target {
//        return mid
//    }
//
//    else if array[mid] >= target {
//        return binarySearch(array: array, target: target, start: start, end: mid - 1)
//    }
//    else {
//        return binarySearch(array: array, target: target, start: mid + 1, end: end)
//    }
//}

//let arr = [-15,-4,3,8,9,13,15]
//var start = 0
//var end = arr.count - 1
//
//while start <= arr.count - 1 {
//    let mid = (start + end) / 2
//    if end - start == 2 && arr[mid] != mid {
//        print(-1)
//        break
//    }
//    if arr[mid] > mid {
//        end = mid - 1
//    }
//    else if arr[mid] < mid {
//        start = mid + 1
//    }
//    else {
//        print(mid)
//        break
//    }
//}

// ------------------------------------------------------------------------------------
//func combinations<T>(source: [T], takenBy : Int) -> [[T]] {
//    if(source.count == takenBy) {
//        return [source]
//    }
//
//    if(source.isEmpty) {
//        return []
//    }
//
//    if(takenBy == 0) {
//        return []
//    }
//
//    if(takenBy == 1) {
//        return source.map { [$0] }
//    }
//
//    var result : [[T]] = []
//
//    let rest = Array(source.suffix(from: 1))
//    let subCombos = combinations(source: rest, takenBy: takenBy - 1)
//    result += subCombos.map { [source[0]] + $0 }
//    result += combinations(source: rest, takenBy: takenBy)
//    return result
//}
//
//let readline = readLine()!
//let comp = readline.components(separatedBy: " ")
//let n = Int(comp[0])!
//let count = Int(comp[1])!
//var spots = [Int]()
//for _ in 0..<n {
//    let loc = Int(readLine()!)!
//    spots.append(loc)
//}
//let numbers = spots
//let combi = combinations(source: numbers, takenBy: count)
//var result = 0
//for condition in combi {
//    var minimum = Int.max
//    for j in 0..<condition.count - 1 {
//        let sortedCondition = condition.sorted()
//        let dist = sortedCondition[j+1] - sortedCondition[j]
//        if dist < minimum {
//            minimum = dist
//        }
//        if j == condition.count - 2 {
//            if minimum > result {
//                result = minimum
//            }
//        }
//    }
//}
//
//print(result)
//-------
//let readline = readLine()!
//let comp = readline.components(separatedBy: " ")
//let n = Int(comp[0])!
//let e = Int(comp[1])!
//var get = [[Int]]()
//let s = Int(readLine()!)!
//for _ in 0..<e {
//    let readline2 = readLine()!
//    let comp2 = readline2.components(separatedBy: " ")
//    var imsi = [Int]()
//    for i in comp2 {
//        imsi.append(Int(i)!)
//    }
//    get.append(imsi)
//}
//let arr = get.sorted(by: {$0[0] < $1[0]})
////print(arr)
////var arr = [[1,2,2],[1,3,5],[1,4,1],[2,3,3],[2,4,2],[3,2,3],[3,6,5],[4,3,3],[4,5,1],[5,3,1],[5,6,2]]
//var dist = Array(repeating: 987654321, count: n+1)
//dist[s] = 0
//for i in 1..<n+1 {
//    for j in arr {
//        if j[0] == i {
//            let start = j[0]
//            let target = j[1]
//            let amount = j[2]
//            if dist[target] > dist[start] + amount {
//                dist[target] = dist[start] + amount
//            }
////            print(j)
//        }
//    }
//}
//dist.removeFirst()
//for d in dist {
//    if d == 987654321 {
//        print("INF")
//    }
//    else {
//        print(d)
//    }
//}


// 18405 임시 저장
//let read = readLine()!
//let comp = read.components(separatedBy: " ")
//let n = Int(comp[0])!
//let k = Int(comp[1])!
//
//var graph = [[Int]]()
//
//var queue = [[Int]]()
//
//for i in 0..<n {
//    let readline = readLine()!
//    let compo = readline.components(separatedBy: " ")
//    var arr = [Int]()
//    for j in 0..<compo.count {
//        if Int(compo[j])! != 0 {
//            queue.append([Int(compo[j])!,i,j,0])
//        }
//        arr.append(Int(compo[j])!)
//    }
//    graph.append(arr)
//}
//
//queue = queue.sorted(by: {$0[0] < $1[0]})
//
//let readline = readLine()!
//let compo = readline.components(separatedBy: " ")
//let s = Int(compo[0])!
//let x = Int(compo[1])!
//let y = Int(compo[2])!
//
//
//let dx = [-1,1,0,0]
//let dy = [0,0,-1,1]
//
//
//func dfs(virus: Int, x: Int,y: Int, time: Int) {
//    queue.removeFirst()
//    for i in 0..<dx.count {
//        let nx = dx[i] + x
//        let ny = dy[i] + y
//        if nx > -1 && nx < n && ny > -1 && ny < n {
//            if graph[nx][ny] == 0 {
//                graph[nx][ny] = virus
//                queue.append([virus,nx,ny, time+1])
//            }
//        }
//    }
//}
//
//while queue.count > 0 {
//    let virus = queue[0][0]
//    let x = queue[0][1]
//    let y = queue[0][2]
//    let time = queue[0][3]
//
//    queue.removeFirst()
//    if queue[0][3] == s {
//        break
//    }
//    for i in 0..<dx.count {
//        let nx = dx[i] + x
//        let ny = dy[i] + y
//        if nx > -1 && nx < n && ny > -1 && ny < n {
//            if graph[nx][ny] == 0 {
//                graph[nx][ny] = virus
//                queue.append([virus,nx,ny, time+1])
//            }
//        }
//    }
//
//
//}
//
//print(graph[x-1][y-1])




