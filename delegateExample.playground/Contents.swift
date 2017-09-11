//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol PicklesCheckable {
    func picklesChecker() -> String
}

class Pickles {
    var delegate: PicklesCheckable!
    func say() -> String {
        return delegate.picklesChecker()
    }
}

class Takeda: PicklesCheckable {
    func picklesChecker() -> String {
        return "美味しいらっきょうあります"
    }
}


let pickles = Pickles()
let takeda = Takeda()

pickles.delegate = takeda
pickles.say()

takeda.picklesChecker()
