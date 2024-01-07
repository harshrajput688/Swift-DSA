import UIKit

//Solution 1. Using Soring
func returnLargestElement(array arr : inout [Int])->Int{
    arr.sort()
    print(arr)
    return arr.last!
}


//Solution 2. Using Max Variable
func returnLargestElement2(array arr: inout [Int])->Int{
    var max = 0
    for i in arr{
        if max < i{
            max = i
        }
    }
    return max
}

var arr = [45,67,23,12,45,67,89, 788]
print(returnLargestElement2(array: &arr))
