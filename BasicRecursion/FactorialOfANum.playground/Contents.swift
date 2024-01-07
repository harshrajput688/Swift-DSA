import UIKit

func factOfANumRecursion(num n: Int)->Int{
    if n == 1{
            return n
        }
        print(n)
        return n * factOfANumRecursion(num: n - 1)
}

print(factOfANumRecursion(num: 5))
