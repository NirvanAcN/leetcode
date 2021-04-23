import UIKit

// 动态规划初体验
// 思想：若前一个元素>0，则将其加到当前元素上
func maxSubArray(_ nums: [Int]) -> Int {
    if nums.count == 1 { return nums.first ?? 0 }
    var numsHelper = nums
    for index in 1..<numsHelper.count {
        if index == 0 { continue }
        if numsHelper[index-1] > 0 {
            numsHelper[index] += numsHelper[index-1]
        }
    }
    
    return numsHelper.max() ?? 0
}

// 贪心算法初体验
// 思想：若当前指针所指元素之前的和小于0，则丢弃当前元素之前的数列
func maxSubArray_tanxin(_ nums: [Int]) -> Int {
    if nums.count == 1 { return nums.first ?? 0 }
    var sum = 0, hisMax = Int.min
    for num in nums {
        sum += num
        if sum < 0 {
            sum = 0
        } else {
            hisMax = max(hisMax, sum)
        }
    }
    return hisMax == Int.min ? nums.max()! : hisMax
}

maxSubArray_tanxin([-2,-1])
