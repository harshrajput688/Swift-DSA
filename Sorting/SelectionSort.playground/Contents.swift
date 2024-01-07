import UIKit

//Problem Statement: Given an array of N integers, write a program to implement the Selection sorting algorithm.
//
//Examples:
//
//Example 1:
//Input: N = 6, array[] = {13,46,24,52,20,9}
//Output: 9,13,20,24,46,52
//Explanation: After sorting the array is: 9, 13, 20, 24, 46, 52
//
//Example 2:
//Input: N=5, array[] = {5,4,3,2,1}
//Output: 1,2,3,4,5
//Explanation: After sorting the array is: 1, 2, 3, 4, 5

func selectionSort(array arr: inout [Int])->[Int]{
    var minimum:Int
    for i in stride(from: 0, to: arr.count, by: 1){
        minimum = i
        for j in stride(from: i, to: arr.count, by: 1){
            if arr[minimum] > arr[j]{
                minimum = j
            }
        }
        (arr[i], arr[minimum]) = (arr[minimum], arr[i])
    }
    return arr
}

var arr = [6,5,78,90,12,0]
print(selectionSort(array: &arr))
