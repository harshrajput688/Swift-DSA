//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//1
//01
//101
//0101
//10101
//010101

var n = 6
for i in stride(from: 0, to: n, by: 1){
    for j in stride(from: 0, to: i+1, by: 1){
        if((i + j)%2 == 0){
            print("1 ", terminator: "")
        }else{
            print("0 ", terminator: "")
        }
    }
    print("")
}
