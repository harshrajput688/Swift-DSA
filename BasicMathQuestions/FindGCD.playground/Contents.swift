import UIKit

//Problem Statement: Find the gcd of two numbers.
//Solution 1: Brute force
func returnGCD(num1: Int, num2: Int)->Int{
    let minNum = min(num1, num2)
    for i in stride(from: minNum, to: 1, by: -1){
        if num1 % i == 0 && num2 % i == 0{
            return i;
        }
    }
    return 1
}

//Solution 2: Using Euclidean’s theorem.
//Intuition: Gcd is the greatest number which is divided by both a and b.If a number is divided by both a and b, it is should be divided by (a-b) and b as well.

func returnGCDInABetterWay(num1: inout Int, num2: inout Int)->Int{
    
    if num1<num2{
        (num1, num2) = (num2, num1)
    }
    if num2 <= 0{
        return 1
    }
    if(num1 % num2 == 0){
        return num2
    }
//    else{
        num1 = num1 - num2
        return returnGCDInABetterWay(num1: &num1, num2: &num2)
//    }
}

var a = 124
var b = 249

print(returnGCDInABetterWay(num1: &a, num2: &b))

