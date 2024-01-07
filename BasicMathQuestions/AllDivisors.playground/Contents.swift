import UIKit

//Problem Statement: Given a number, print all the divisors of the number. A divisor is a number that gives the remainder as zero when divided.
//
//Examples
//Example 1:
//Input: n = 36
//Output: 1 2 3 4 6 9 12 18 36
//Explanation: All the divisors of 36 are printed.
//
//Example 2:
//Input: n = 97
//Output: 1 97
//Explanation: Since 97 is a prime number, only 1 and 97 are printed.

func printAllDivisors(num: Int){
    for i in stride(from: 1, to: num, by: 1){
        if num % i == 0{
            print(i)
        }
    }
}

func printAllDivisors2(num: Int){
    for i in stride(from: 1, to: Int(sqrt(Double(num)))+1, by: 1){
        if num % i == 0{
            print(i)
            if(i != num/i){ print("\(num/i)")}
        }
    }
}


printAllDivisors2(num: 36)
