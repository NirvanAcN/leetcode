import UIKit

// 不借助第三个变量 交换两个变量的值

func exchange(_ a: inout Int, _ b: inout Int) -> (Int, Int) {
    a = a + b
    b = a - b
    a = a - b
    
    return (a, b)
}

var a = 3, b = 5
exchange(&a, &b)

