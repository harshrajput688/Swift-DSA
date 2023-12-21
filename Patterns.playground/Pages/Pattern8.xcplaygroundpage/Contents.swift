//: [Previous](@previous)

import Foundation

//Input Format: N = 3
//Result:
//  *
//  **
//  ***
//  **
//  *

let n = 6
for i in stride(from: 1, to: n + 1, by: 1){
    for j in stride(from: 1, to: i + 1, by: 1){
        print("* ", terminator: "")
    }
    print("")
}
for i in stride(from: 1, to: n, by: 1){
    for j in stride(from: 1, to: n + 1 - i, by: 1){
        print("* ", terminator: "")
    }
    print("")
}
