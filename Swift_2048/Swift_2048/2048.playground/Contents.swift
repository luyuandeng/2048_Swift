//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var j : Int = 0;
var i : Int;
for (i=1; i<10; i++)
{
    j+=i
}

// TODO: btn未显示出来？


// for-in遍字典， 2个变量表示每个键值对
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest
