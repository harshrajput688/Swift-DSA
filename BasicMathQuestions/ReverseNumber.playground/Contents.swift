import UIKit

//Problem Statement: Given a number N reverse the number and print it.
//
//Examples:
//
//Example 1:
//Input: N = 123
//Output: 321
//Explanation: The reverse of 123 is 321
//
//Example 2:
//Input: N = 234
//Output: 432
//Explanation: The reverse of 234 is 432

func reverseANumber(number n: Int)->Int{
    var nCopy = n
    var reversNumber = 0
    while(nCopy != 0){
        let lastDigit = nCopy%10;
        reversNumber = reversNumber*10 + lastDigit
        nCopy = nCopy/10
    }
    return reversNumber
}
var number = 543

print(reverseANumber(number: number))
