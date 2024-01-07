import UIKit

var val = 1
func printTillNRecursion(num n: inout Int){
    if n < val{
        return
    }
    print(val)
    val += 1
    printTillNRecursion(num: &n)
}
var n = 6
printTillNRecursion(num: &n)
