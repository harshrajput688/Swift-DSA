//: [Previous](@previous)

import Foundation
//Input Format: N = 6
//Result:
//     *
//    ***
//   *****
//  *******
// *********
//***********

var n = 6
for i in stride(from: 0, to: n, by: 1){
//    print(i, terminator: "")
    for j in stride(from: 0, to: n-1-i, by: 1){
        print("  ", terminator: "")
    }
    for j in stride(from: 0, to: 1 + (i + 1 - 1) * 2, by: 1){
        print("* ", terminator: "")
    }
    print("")
}
