import UIKit

//Problem Statement:  Given a number check if it is a palindrome.
//
//An integer is considered a palindrome when it reads the same backward as forward.
//
//Examples:
//
//Example 1:
//Input: N = 123
//Output: Not Palindrome Number
//Explanation: 123 read backwards is 321.Since these are two different numbers 123 is not a palindrome.
//
//Example 2:
//Input: N =  121
//Output: Palindrome Number
//Explanation: 121 read backwards as 121.Since these are two same numbers 121 is a palindrome.


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

func checkPalindrome(number n: Int)->Bool{
    return n == reverseANumber(number: n)
}
print(checkPalindrome(number: 121))
