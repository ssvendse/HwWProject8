//
//  (c) 2014 Nate Cook, licensed under the MIT license
//

import Foundation

extension Array {
    mutating func shuffle() {
        for i in 0 ..< (count - 1) {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }            
            swapAt(i, j)
        }
    }
}
