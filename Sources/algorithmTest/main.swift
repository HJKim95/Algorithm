import Foundation


let readLines = readLine()!
let readNum = readLines.components(separatedBy: " ")

let counts = Int(readNum[0])!
let resultSum = Int(readNum[1])!

let read = readLine()!
var readNumArray = read.components(separatedBy: " ")
var numArray = [Int]()
for i in 0..<readNumArray.count {
    numArray.append(Int(readNumArray[i])!)
}
let k = numArray.sorted()
var result = 0
var resultCount = 0
var test = [Int]()
var total = [[Int]]()

for jump in 0..<k.count {
    let tt = jump + 1
    for j in 0..<k.count {
        result = 0
        test.removeAll()
        for i in j..<k.count {
            if i%tt == 0 || i==j{
                result += k[i]
                test.append(k[i])
                
            }
            if result == resultSum {
                if !total.contains(test) {
                    
                    resultCount += 1
                }
//                print(test, jump, j, i)
                total.append(test)
//                print(total)
//                resultCount += 1
            }
        }
    //    print(result)
    }
}

print(resultCount)


