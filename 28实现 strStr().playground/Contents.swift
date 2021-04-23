import UIKit

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle == "" { return 0 }
    let haystackHelper = Array(haystack)
    let needleHelper = Array(needle)
    
    for index in 0..<haystackHelper.count {
        for (neeleIndex, neeleChar) in needleHelper.enumerated() {
            if index + neeleIndex > haystackHelper.count - 1 { return -1 }
            if neeleChar != haystackHelper[index + neeleIndex] { break }
            if neeleIndex ==  needleHelper.count - 1 { return index }
        }
    }
    
    return -1
}


strStr("aaaaa", "bba")

