import UIKit

//Input Format: N = 6
//Result:
//*
//* *
//* * *
//* * * *
//* * * * *
//* * * * * *


var n = 6
for i in 1...n{
    for j in 1...i{
        print("*", terminator: "")
    }
    print("")
}
