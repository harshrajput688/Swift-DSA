//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//***********
// *********
//  *******
//   *****
//    ***
//     *

var n = 6
for i in stride(from: 1, to: n+1, by: 1){
    for j in stride(from: 1, to: i, by: 1){
        print("  ", terminator: "")
    }
    for j in stride(from: 1, to: (n-i)*2, by: 1){
        print("* ", terminator: "")
    }
    print("")
}
