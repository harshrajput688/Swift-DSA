//: [Previous](@previous)

import Foundation

//Input Format: N = 3
//Result:
//3 3 3 3 3
//3 2 2 2 3
//3 2 1 2 3
//3 2 2 2 3
//3 3 3 3 3

var n = 6

for i in stride(from: 0, to: 2*n-1, by: 1){
    for j in stride(from: 0, to: 2*n-1, by: 1){
        let top = i
        let left = j
        let right = (2*n-2)-j
        let bottom = (2*n-2)-i
        
        let distances = [top, left, right, bottom]
        
        print(n-distances.min()!, terminator: "")
    }
    print("")
}
