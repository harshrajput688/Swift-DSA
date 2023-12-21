//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//1
//1 2
//1 2 3
//1 2 3 4
//1 2 3 4 5
//1 2 3 4 5 6

var n = 6
for i in 1...n{
    for j in 1...i{
        print("\(j) ", terminator: "")
    }
    print("")
}
