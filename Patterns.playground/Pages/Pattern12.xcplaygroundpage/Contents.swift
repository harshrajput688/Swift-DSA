//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//A
//A B
//A B C
//A B C D
//A B C D E
//A B C D E F

var n1 = 6

var n: UInt32 = UInt32(n1)

for i in stride(from: 0, to: n, by: 1){
    for j in stride(from: 0, to: i + 1, by: 1){
        print(UnicodeScalar((Unicode.Scalar("A").value) + j)!, terminator: "")
    }
    print("")
}

