import Foundation

func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else { return false }
    var result = 0
    var x_1 = x
    
    while x_1 > 0 {
        result = result * 10 + x_1 % 10
        x_1 /= 10
    }
    
    return result == x
}


print(isPalindrome(1212))
