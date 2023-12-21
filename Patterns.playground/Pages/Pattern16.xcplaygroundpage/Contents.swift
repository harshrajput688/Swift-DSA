//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//F
//E F
//D E F
//C D E F
//B C D E F
//A B C D E F

var n: UInt32 = 6
for i in stride(from: 0, to: n, by: 1){
    for j in stride(from: n-i-1, to: n, by: 1){
        print(UnicodeScalar(Unicode.Scalar("A").value + j)!, terminator: "")
    }
    print("")
}
