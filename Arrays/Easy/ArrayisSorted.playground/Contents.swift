import UIKit

func isArraySorted(array arr: [Int])->Bool{
    var isAssending = false
    if arr[0] < arr[1]{
        isAssending = true
    }
    
    if isAssending{
        for i in stride(from: 2, to: arr.count-1, by: 1){
            if arr[i] > arr[i+1]{
                return false
            }
        }
    }else{
        for i in stride(from: 2, to: arr.count-1, by: 1){
            if arr[i] < arr[i+1]{
                return false
            }
        }
    }
    return true
}

print(isArraySorted(array: [34, 56]))
