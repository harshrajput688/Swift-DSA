import UIKit

//Problem Statement: “Given a string, check if the string is palindrome or not.”  A string is said to be palindrome if the reverse of the string is the same as the string.
//
//Examples:
//
//Example 1:
//Input: Str =  “ABCDCBA”
//Output: Palindrome
//Explanation: String when reversed is the same as string.
//
//Example 2:
//Input: Str = “TAKE U FORWARD”
//Output: Not Palindrome
//Explanation: String when reversed is not the same as string.

func checkPalindrome(string str: String, start s: Int, last l: Int)->Bool{
    if s>=l{
        return true
    }
    let startIdx = str.index(str.startIndex, offsetBy: s)
    let lastIdx = str.index(str.startIndex, offsetBy: l)
    if str[startIdx] != str[lastIdx]{
        return false
    }
    return checkPalindrome(string: str, start: s+1, last: l-1)
    
}
let str = "ABCBA"
let startIdx = 0
let lastIdx = str.count - 1
print(checkPalindrome(string: str, start: startIdx, last: lastIdx))
