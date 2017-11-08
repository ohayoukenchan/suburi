//: [Previous](@previous)

import Foundation
import UIKit


//extension CGFloat{
//    init(_ str:String? = nil) {
//        guard
//            let s = str,
//            let n = NumberFormatter().number(from: s) else {
//                self = 0.0
//                return
//            }
//        self = CGFloat(truncating: n)
//    }
//}

extension CGFloat {
    init?<S>(_ text:S) where S : StringProtocol {
        guard let number = Double(text) else { return nil }
        self.init(number)
    }
}


let text = "10.2"
let text2 = "aiueo"
let num = CGFloat(text)
let num2 = CGFloat(text2)
