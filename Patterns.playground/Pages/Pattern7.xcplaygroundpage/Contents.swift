//: [Previous](@previous)

import Foundation

//Input Format: N = 3
//Result:
//  *
// ***
//*****
//*****
// ***
//  *

var n = 5
for i in stride(from: 1, to: n+1, by: 1){
    for j in stride(from: i, to: n, by: 1){
        print("  ", terminator: "")
    }
    for j in stride(from: 1, to: 2 + (i - 1) * 2, by: 1){
        print("* ", terminator: "")
    }
    print("")
}

for i in stride(from: 1, to: n + 1, by: 1){
    for j in stride(from: 1, to: i, by: 1){
        print("  ", terminator: "")
    }
    for j in stride(from: 1, to: (n-i)*2 + 2, by: 1){
        print("* ", terminator: "")
    }
    print("")
}

