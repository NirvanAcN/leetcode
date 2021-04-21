import UIKit

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count <= 1 { return nums.count }
    var flag = 1
    for i in 1..<nums.count {
        if nums[i] != nums[i-1] {
            nums[flag] = nums[i]
            flag += 1
        }
    }
    
    return flag
}

var target = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates(&target)
print(target)
