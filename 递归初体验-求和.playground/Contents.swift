import UIKit

/**
 图解算法 第四章 D&C分治思想
 */

// P47 练习4.1
func recursiveFunction(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var sub_nums = nums
    sub_nums.removeLast()
    return (nums.last ?? 0) + recursiveFunction(sub_nums)
}

recursiveFunction([2, 4, 6])

// P47 练习4.2
func countOfArray(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var sub_nums = nums
    sub_nums.removeLast()
    return countOfArray(sub_nums) + 1
}

countOfArray([2, 4, 6])

