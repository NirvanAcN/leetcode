import UIKit

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    let map = [
        "(": ")",
        "[": "]",
        "{": "}"
    ]

    var helper = Array<Character>()
    var result = true
    s.forEach { (char) in
        if map.keys.contains(String(char)) {
            helper.append(char)
        } else if map.values.contains(String(char)) {
            if let key = helper.last, map[String(key)] == String(char) {
                helper.removeLast()
            } else {
                result = false
            }
        } else {
            result = false
        }
    }
    if helper.count > 0 { result = false }
    return result
    
}

isValid("((")
