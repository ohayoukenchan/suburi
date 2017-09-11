//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct Person: Codable {
    enum Child: String, Codable {
        case son, daughter
    }
    let name: String
    let age: Int
    let children: [Child]
}

let person = Person(name: "Foo", age: 10, children: [.daughter, .daughter])
let data = try? JSONEncoder().encode(person)





