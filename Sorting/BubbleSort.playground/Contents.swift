import UIKit

//Problem Statement: Given an array of N integers, write a program to implement the Bubble Sorting algorithm.
//
//Examples:
//
//Example 1:
//Input: N = 6, array[] = {13,46,24,52,20,9}
//Output: 9,13,20,24,46,52
//Explanation: After sorting we get 9,13,20,24,46,52
//
//
//Input: N = 5, array[] = {5,4,3,2,1}
//Output: 1,2,3,4,5
//Explanation: After sorting we get 1,2,3,4,5

var greeting = "Hello, playground"
func bubbleSort(array arr: inout [Int]) -> [Int]{
    for i in stride(from: 0, to: arr.count, by: 1){
        for j in stride(from: 0, to: arr.count-1, by: 1){
            if arr[j] > arr[j+1]{
                (arr[j], arr[j+1]) = (arr[j+1], arr[j])
            }
        }
    }
    return arr
}
var arr = [3,1,56,78,23,0]
print(bubbleSort(array: &arr))
