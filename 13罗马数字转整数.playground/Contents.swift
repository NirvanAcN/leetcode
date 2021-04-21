import Foundation

func romanToInt(_ s: String) -> Int {
    let rules = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    var result = 0
    var last = 0
    s.forEach { (char) in
        let currentValue = rules[String(char)] ?? 0
        if currentValue > last && last != 0 {
            result = result - last + currentValue - last
        } else {
            result += currentValue
        }
        last = currentValue

    }
    return result
}

print(romanToInt("MCMXCIV"))
