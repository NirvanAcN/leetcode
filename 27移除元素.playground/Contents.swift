import UIKit

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    
    var anchor = 0 // 待插入位置
    
    for i in 0..<nums.count {
        if nums[i] != val {
            nums[anchor] = nums[i]
            anchor += 1
        }
    }
    
    return anchor
}

var foo = [0,1,2,2,3,0,4,2]
removeElement(&foo, 2)
print(foo)
