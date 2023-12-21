//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//1          1
//12        21
//123      321
//1234    4321
//12345  54321
//123456654321

var n = 4
for i in stride(from: 1, to: n+1, by: 1){
    for j in stride(from: 1, to: i+1, by: 1){
        print("\(j) ", terminator: "")
    }
    for j in stride(from: 1, to: n*2-i*2 + 1, by: 1){
        print("  ", terminator: "")
    }
    for j in stride(from: i, to: 0, by: -1){
        print("\(j) ", terminator: "")
    }
    print("")
}
