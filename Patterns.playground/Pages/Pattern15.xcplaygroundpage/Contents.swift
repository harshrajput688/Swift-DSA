//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//     A
//    ABA
//   ABCBA
//  ABCDCBA
// ABCDEDCBA
//ABCDEFEDCBA

var n: UInt32 = 6

for i in stride(from: 0, to: n, by: 1){
    for j in stride(from: 1, to: n-i, by: 1){
        print(" ", terminator: "")
    }
    for j in stride(from: 0, to: i+1, by: 1){
        print(UnicodeScalar(Unicode.Scalar("A").value + j)!, terminator: "")
    }
    for j in stride(from: i, to: 0, by: -1){
        print(UnicodeScalar(Unicode.Scalar("A").value + j - 1)!, terminator: "")
    }
    print("")
}
