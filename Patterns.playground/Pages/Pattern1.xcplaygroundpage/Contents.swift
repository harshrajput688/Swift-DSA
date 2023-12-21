//: [Previous](@previous)

import Foundation

//Example 1:
//Input: N = 3
//Output:
//* * *
//* * *
//* * *

var n = 5

for i in 1...n{
    for j in 1...n{
        print("*", terminator: "")
    }
    print("")
}
