//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let isEmpty = true
let fruit: Array<String>? = ["banana", "apple", "grape"]


func doSomething () -> Array<String> {
    guard let fruits = fruit else {
        return ["huyiou"]
    }
    print("通る")
    return ["aaa","bbb"]
}

doSomething()

protocol Animal {
    associatedtype FoodType
    func eat(food: FoodType)
    func makeFriend(friend: Self)
}

class mouse: Animal {
    typealias FoodType = Mouse
    func eat(food: FoodType) {
        print("Yum")
    }
    func makeFriend(friend: Cat) {
        print("Got a new friend")
    }
}

class Cat: Animal {
    typealias FoodType = Mouse
    func eat(food: FoodType) {
        print("Yum")
    }
    func makeFriend(friend: Cat) {
        print("Got a new friend")
    }
}

//let Mouse = Animal<Mouse>
let cat = cat()
