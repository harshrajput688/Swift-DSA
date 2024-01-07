import UIKit

//Problem Statement: Given an array of size N. Find the highest and lowest frequency element.
//
//Pre-requisite: Hashing Theory and  Counting frequencies of array elements
//
//Examples:
//
//Example 1:
//Input: array[] = {10,5,10,15,10,5};
//Output: 10 15
//Explanation: The frequency of 10 is 3, i.e. the highest and the frequency of 15 is 1 i.e. the lowest.
//
//Example 2:
//
//Input: array[] = {2,2,3,4,4,2};
//Output: 2 3
//Explanation: The frequency of 2 is 3, i.e. the highest and the frequency of 3 is 1 i.e. the lowest.

func countFrequency(array arr: [Int]){
    var visited: [Bool] = []
    var lowFre = 0
    var highFre = 0
    var lowval = 0
    var highval = 0
    for i in stride(from: 0, to: arr.count, by: 1){
        visited.append(false)
    }
    for i in stride(from: 0, to: arr.count, by: 1){
        var count = 1
        if visited[i] == true{
            continue
        }
        for j in stride(from: i+1, to: arr.count, by: 1){
            if arr[i] == arr[j]{
                visited[j] = true
                count += 1
            }
        }
        print(arr[i], count)
        if lowFre == 0, highFre == 0{
            lowFre = count
            highFre = count
            lowval = arr[i]
            highval = arr[i]
            continue
        }
        if lowFre > count{
            lowFre = count
            lowval = arr[i]
        }
        if highFre < count{
            highFre = count
            highval = arr[i]
        }
    }
    print("High Frequency: \(highFre) of \(highval)")
    print("Low Frequency: \(lowFre) of \(lowval)")
}
countFrequency(array: [46,34,67,34,67,34, 34, 56, 67, 89,90, 90,56, 46, 89])

