import UIKit

// 二分法初体验

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1, result = nums.count
    while right >= left {
        let mid: Int = (right - left) / 2 + left
        if nums[mid] >= target {
            right = mid - 1
            result = mid
        } else {
            left = mid + 1
        }
    }
    return result
}

searchInsert([1,3,5,6], 0)
