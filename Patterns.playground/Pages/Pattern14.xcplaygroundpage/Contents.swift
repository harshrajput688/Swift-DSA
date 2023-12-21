//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//A
//B B
//C C C
//D D D D
//E E E E E
//F F F F F F

var n:UInt32 = 6

for i in stride(from: 0, to: n, by: 1){
    for j in stride(from: 0, to: i+1, by: 1){
        print(UnicodeScalar(Unicode.Scalar("A").value + i)!, terminator: "")
    }
    print("")
}
