//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct FizzBuzz: Collection {
    var startIndex: Int {
        return 1
    }
    
    var endIndex: Int {
        return 101
    }
    
    func index(after i: Int) -> Int {
        return i + 1
    }
    
    func index(before i: Int) -> Int {
        return i - 1
    }
        
    subscript (position: Int) -> String {
        precondition(indices.contains(position), "out of 1-100")
        
        switch (position%3 == 0, position%5 == 0) {
        case (false, false):
            return String(position)
        case (true, false):
            return "FIZZ"
        case (false, true):
            return "BUZZ"
        case (true, true):
            return "FIZZBUZZ"
        }
    }
}


FizzBuzz()

//for value in FizzBuzz().reversed().prefix(4) {
//    print(value)
//}

//let fb = FizzBuzz().enumerated()
//    .filter { $0.element == "BUZZ" }
//    .map { $0.offset + 1 }
//
//fb
