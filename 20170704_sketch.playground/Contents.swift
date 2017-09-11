//: Playground - noun: a place where people can play

import UIKit

//var x = 0
//var y = 0
//
//let clousure = { [x] in
//    print(x, y)
//}
//
//x = 10
//y = 10
//clousure()


class Fruit {
    var name: String;
    init(name: String) {
        self.name = name
    }
}

let banana = Fruit(name: "banana")
let apple = Fruit(name: "apple")

banana.name
apple.name

apple.name = "津軽"

let closure = { [banana] in
    print(banana.name, apple.name)
}

banana.name = "完熟王"
apple.name = "富士"

closure()




