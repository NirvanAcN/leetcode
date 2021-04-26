import UIKit

/**
 快排初体验 O(nlogn)
 */

func qiuckSort(_ nums: [Int]) -> [Int] {
    if nums.count < 2 { return nums }
    let anchor = nums.first!

    var left = [Int]()
    var right = [Int]()

    for i in 1..<nums.count {
        let current = nums[i]
        if current < anchor {
            left.append(current)
        } else {
            right.append(current)
        }
    }
    
    return qiuckSort(left) + [anchor] + qiuckSort(right)
}

qiuckSort([8, 10, 4, 9, 6])

