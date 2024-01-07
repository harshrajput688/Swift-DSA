import UIKit

//Using Loop
func reverseArr(array arr: inout [Int])->[Int]{
    var s = 0;
    var l = arr.count-1;
    while s < l{
        (arr[s], arr[l]) = (arr[l], arr[s])
        s += 1
        l -= 1
    }
    return arr
}
var arr1: [Int] = [3,5,6,8]
print(reverseArr(array: &arr))

//Using Recursion
func reverseArrRecursion(array arr: inout [Int], start s: inout Int, last l: inout Int)->[Int]{
    if s >= l{
        return arr
    }
    (arr[s], arr[l]) = (arr[l], arr[s])
    s += 1
    l -= 1
    return reverseArrRecursion(array: &arr, start: &s, last: &l)
}
var arr: [Int] = [3,5,6,8, 7]
var start = 0
var last = arr.count - 1
print(reverseArrRecursion(array: &arr, start: &start, last: &last))
