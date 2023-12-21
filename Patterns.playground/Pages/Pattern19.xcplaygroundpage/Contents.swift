//: [Previous](@previous)

import Foundation

//Input Format: N = 6
//Result:
//******
//*    *
//*    *
//*    *
//*    *
//******

var n = 6
for i in stride(from: 0, to: n, by: 1){
    for j in stride(from: 0, to: n, by: 1){
        if((i == 0) || (j == 0 ) || (i == n-1) || (j == n-1)){
            print("*", terminator: "")
        }else{
            print(" ", terminator: "")
        }
    }
    print("")
}
