import UIKit

//Solution 1
func returnSecondLargest(array arr: [Int])->Int{
    var largest = 0
    var sLargest = 0
    for i in arr{
        if i > largest{
            largest = i
        }
    }
    for i in arr{
        if i > sLargest && i != largest{
            sLargest = i
        }
    }
    return sLargest
}

//Solution 2
func returnSecondLargest2(array arr: [Int])->Int{
    var largest = 0
    var sLargest = 0
    for i in arr{
        if i > largest{
            sLargest = largest
            largest = i
        }else if i > sLargest && i != largest{
            sLargest = i
        }
    }
    return sLargest
}


var arr = [34,67,12,34,56,78,87,79, 65]
print(returnSecondLargest2(array: arr))
