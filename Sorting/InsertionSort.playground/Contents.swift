import UIKit

//Problem Statement: Given an array of N integers, write a program to implement the Insertion sorting algorithm.
//
//Examples:
//
//Example 1:
//Input: N = 6, array[] = {13,46,24,52,20,9}
//Output: 9,13,20,24,46,52
//Explanation:
//After sorting the array is: 9,13,20,24,46,52
//
//
//Example 2:
//Input: N=5, array[] = {5,4,3,2,1}
//Output: 1,2,3,4,5
//Explanation: After sorting the array is: 1,2,3,4,5

func insertionSort(array arr: inout [Int])->[Int]{
    for i in stride(from: 0, to: arr.count-1, by: 1){
        var j = i+1
        while(j>0 && arr[j] < arr[j-1]){
            (arr[j], arr[j-1]) = (arr[j-1], arr[j])
            j -= 1
        }
    }
    return arr
}

var arr = [45,23,1,87,92,34]
print(insertionSort(array: &arr))
