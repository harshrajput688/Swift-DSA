import UIKit

func sumTillNRecursion(num n: Int)->Int{
    if n == 1{
        return n
    }
    return n + sumTillNRecursion(num: n - 1)
}
print(sumTillNRecursion(num: 5))

