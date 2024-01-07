import UIKit

//Quick Sort Algorithm
//Problem Statement:  Given an array of n integers, sort the array using the Quicksort method.
//
//Examples:
//
//Example 1:
//Input:  N = 5  , Arr[] = {4,1,7,9,3}
//Output: 1 3 4 7 9
//
//Explanation: After sorting the array becomes 1, 3, 4, 7, 9
//
//Example 2:
//Input: N = 8 , Arr[] = {4,6,2,5,7,9,1,3}
//Output: 1 2 3 4 5 6 7 9
//Explanation: After sorting the array becomes 1, 3, 4, 7, 9

func quickSort(array arr: inout [Int], low l: Int, high h: Int){
    if l>=h{
        return
    }
    var partitionIdx = givePartitionIndex(array: &arr, low: l, high: h)
    quickSort(array: &arr, low: l, high: partitionIdx-1)
    quickSort(array: &arr, low: partitionIdx+1, high: h)
}

func givePartitionIndex(array arr: inout [Int], low l: Int, high h: Int)->Int{
    var s = l
    var e = h
    var pivot = arr[l]
    while(s<e){
        while(arr[s] <= pivot && s <= h){
            s += 1
        }
        while(arr[e] > pivot && e >= s){
            e -= 1
        }
        if s < e{
            (arr[s], arr[e]) = (arr[e], arr[s])
        }
    }
    (arr[l], arr[e]) = (arr[e], arr[l])
    return e
}

var arr = [34, 65,78, 22, 67, 87, 0]
quickSort(array: &arr, low: 0, high: arr.count-1)
print(arr)
