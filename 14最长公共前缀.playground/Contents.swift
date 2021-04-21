import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    
    let sortedStrs = strs.sorted()
    let firstStr = sortedStrs.first ?? ""
    let lastStr = sortedStrs.last ?? ""
    let lastArr = Array(lastStr)
    var result = ""
    for (index, char) in firstStr.enumerated() {
        guard char == lastArr[index] else { break }
        result.append(char)
    }
    
    return result
}

print(longestCommonPrefix(["flower","flow","flight"]))
