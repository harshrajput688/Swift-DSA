import UIKit

//Sample Input 1:
//35
//Sample Output 1:
//1
//Explanation of sample output 1:
//35 is only divisible by ‘5’, hence answer is 1.
//
//Sample Input 2:
//373
//Sample Output 2:
//0

func giveTotalDigitDivideCount(num n: Int)->Int{
    var nCopy = n
    var totalCount = 0

    while(nCopy != 0){
        var lastDigit = nCopy%10
        nCopy = nCopy/10
        if lastDigit == 0{continue}
        if n%lastDigit == 0{
            totalCount = totalCount + 1
        }
    }
    return totalCount
}
var n = 345
print(giveTotalDigitDivideCount(num: n))
