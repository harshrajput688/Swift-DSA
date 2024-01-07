import UIKit

//Problem:  Given an array of size n, sort the array using Merge Sort.
//
//Examples:
//
//Example 1:
//Input: N=5, arr[]={4,2,1,6,7}
//Output: 1,2,4,6,7,
//
//
//Example 2:
//Input: N=7,arr[]={3,2,8,5,1,4,23}
//Output: 1,2,3,4,5,8,23

func mergeSort(array arr: inout [Int], start s: Int, end e: Int){
    if(s>=e){
        return
    }
    var mid = (s + e)/2;
    mergeSort(array: &arr, start: s, end: mid)
    mergeSort(array: &arr, start: mid+1, end: e)
    merge(array: &arr, start: s, mid: mid, end: e)
}

func merge(array arr: inout [Int], start s: Int, mid m: Int, end e: Int){
    var left = s
    var right = m+1
    var temp: [Int] = []
    
    while(left<=m && right <= e){
        if arr[left] < arr[right]{
            temp.append(arr[left])
            left += 1
        }else{
            temp.append(arr[right])
            right += 1
        }
    }
    while left <= m{
        temp.append(arr[left])
        left += 1
    }
    while right <= e{
        temp.append(arr[right])
        right += 1
    }
    
    var j = s
    for i in stride(from: 0, to: temp.count, by: 1){
        arr[j] = temp[i]
        j += 1
    }
}

var arr = [45, 67, 34, 23, 67, 89, 56]
mergeSort(array: &arr, start: 0, end: arr.count - 1)
print(arr)
