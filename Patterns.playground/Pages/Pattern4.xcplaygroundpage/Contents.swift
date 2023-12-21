//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//* * * * * *
//* * * * *
//* * * *
//* * *
//* *
//*

var n = 6
for i in stride(from: 1, to: n+1, by: 1){
//    print(i)
    for j in stride(from: 1, to: n + 2 - i, by: 1){
        print("\(j) ", terminator: "")
    }
    print("")
}
