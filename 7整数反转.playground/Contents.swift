import Foundation

func reverse(_ x: Int) -> Int {
    var result: Int = 0
    var x = x
    while x != 0 {
        result = result * 10 + x % 10
        x /= 10
    }
    guard result >= (-1<<31) && result < 1<<31 else {
        return 0
    }
    return result
}

print(reverse(-12342323123))
