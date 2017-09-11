//: Playground - noun: a place where people can play

import UIKit

public protocol EraCompatible {
    associatedtype era
    var era: EraContainer<Self> { get }
}

extension EraCompatible {
    public var era: EraContainer<Self> {
        return EraContainer(body: self)
    }
}

public struct EraContainer<Containee> {
    public let body: Containee
}

extension CGPoint: EraCompatible {
    public typealias era = EraContainer<CGPoint>
}

extension EraContainer where Containee == CGPoint {
    
    public static func `init`(point: CGFloat) -> CGPoint {
        return CGPoint(x: point, y: point)
    }
}


//extension Array: EraCompatible {
//    public typealias era = EraContainer<Array>
//}
//
//extension EraContainer where Containee == Array {
//    
//    public static func random(_: Int) -> Int {
//        return arc4random(rawValue: 1)
//    }
//}

let point = CGPoint.era.init(point: 3.14)
print(point) //(3.14, 3.14)






