import UIKit

func getRealPath(_ path: String) -> String {
    let chars = path.split(separator: "/")
    var stack = Array<String>()
    
    chars.forEach { (subPath) in
        if subPath == ".." {
            stack.removeLast()
        } else if subPath == "." {
            
        } else {
            stack.append(String(subPath))
        }
    }
    
    return stack.joined(separator: "/")
}

getRealPath("/a/./b/../../c/")
