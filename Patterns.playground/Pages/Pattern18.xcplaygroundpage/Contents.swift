//: [Previous](@previous)

import Foundation

//Input Format: N = 3
//Result:
//*    *
//**  **
//******
//**  **
//*    *
var n = 6

for i in stride(from: 0, to: n, by: 1){
    for j in stride(from: 0, to: i + 1, by: 1){
        print("*", terminator: "")
    }
    
    for j in stride(from: i*2, to: n*2-2, by: 1){
        print(" ", terminator: "")
    }
    
    for j in stride(from: 0, to: i + 1, by: 1){
        print("*", terminator: "")
    }
    print("")
}

for i in stride(from: 1, to: n, by: 1){
    for j in stride(from: i, to: n, by: 1){
        print("*", terminator: "")
    }
    for j in stride(from: 0, to: i*2, by: 1){
        print(" ", terminator: "")
    }
    for j in stride(from: i, to: n, by: 1){
        print("*", terminator: "")
    }
    print("")
}
