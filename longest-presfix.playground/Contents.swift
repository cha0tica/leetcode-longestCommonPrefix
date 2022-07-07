import UIKit
import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count != 0 else { return "" }
    var result = strs.sorted(by: { $0.count < $1.count })[0]
    
    
    for i in strs {
        while !i.hasPrefix(result) {
            result = String(result.dropLast())
            
        }
        
        
    }
    return (result)
}

longestCommonPrefix(["do","dodopizza","door"])
