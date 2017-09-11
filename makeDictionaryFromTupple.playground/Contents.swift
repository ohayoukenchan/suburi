//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let touples = [("Apple", "hello"), ("Orange", "spec"), ("Grape", "yum")]

// ["Grape": 3, "Orange": 2, "Apple": 1]
let dictionary = Dictionary(uniqueKeysWithValues: touples)

dictionary["Apple"]
