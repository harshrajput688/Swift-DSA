import UIKit

func removeDuplicat(array arr: inout[Int]){
    for i in stride(from: 0, to: arr.count-1, by: 1){
        if arr[i] == arr[i+1]{
            arr[i] = -1
        }
    }
}

func removeDuplicat2(array arr: inout[Int]){
    var j = 0
    for i in stride(from: 1, to: arr.count, by: 1){
        if arr[j] != arr[i]{
            j += 1
            arr[j] = arr[i]
        }
    }
    for i in stride(from: 0, to: j+1, by: 1){
        print("\(arr[i]), ", terminator: "")
    }
}

func removeDuplicate3(array arr: inout[Int]){
    var set = Set(arr)
    arr = Array(set)
}
var arr = [45,78,90,456, 456, 890 , 890, 890, 890, 890, 900]
removeDuplicate3(array: &arr)
print(arr)
