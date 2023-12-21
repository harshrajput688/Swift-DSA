//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//1
//2  3
//4  5  6
//7  8  9  10
//11  12  13  14  15
//16  17  18  19  20  21
//

var n = 6
var val = 1;

for i in stride(from: 1, to: n+1, by: 1){
    for j in stride(from: 1, to: i+1, by: 1){
        print("\(val) ", terminator: "")
        val = val + 1
    }
    print("")
}
