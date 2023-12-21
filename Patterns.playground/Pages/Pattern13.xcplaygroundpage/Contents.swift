//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//A B C D E F
//A B C D E
//A B C D
//A B C
//A B
//A


var n: UInt32 = 6

for i in stride(from: 0, to: n, by: 1){
    for j in stride(from: 0, to: n-i,by: 1){
        print(UnicodeScalar(Unicode.Scalar("A").value+j)!, terminator: "")
    }
    print("")
}
