import UIKit

//Problem Statement: Given a number, check if it is Armstrong Number or Not.
//
//Examples:
//
//Example 1:
//Input:153
//Output: Yes, it is an Armstrong Number
//Explanation: 1^3 + 5^3 + 3^3 = 153
//
//Input:170
//Output: No, it is not an Armstrong Number
//Explanation: 1^3 + 7^3 + 0^3 != 170

func checkNumArmstrongOrNot(num: inout Int)->Bool{
    var count: Int = 0
    var tempNum = num
    while(tempNum != 0){
        tempNum = tempNum/10
        count += 1
    }
    tempNum = num
    var madedNum: Int = 0
    var lastDigit: Int = 0
    while(tempNum != 0){
        lastDigit = tempNum%10
        madedNum = madedNum + Int(pow(Double(lastDigit), Double(count)))
        tempNum = tempNum/10
    }
    return num == madedNum
}

var num = 1634
print(checkNumArmstrongOrNot(num: &num))
