//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//let url: String? = "http://qiita.com/hachinobu/items/aedac203f42b215e6df4"


//if let unwrapUrl = url, elements: [String.CharacterView] = unwrapUrl.characters.split("/"), last = elements.last where last.count > 5 {
//    print(String.last)
//}


let url: String? = "http://qiita.com/hachinobu/items/aedac203f42b215e6df4"
//if let last = url.map({ $0.characters.split(separator: "/") }).flatMap({ $0.last }) last.count > 5 {
//    print(last)
//}

if let lasr = url?.characters.split(separator: "/") {
    print(lasr)
}

//if let unwrapUrl = url, elements: [String.CharacterView] = unwrapUrl.characters.split("/"), last = elements.last where last.count > 5 {
//    print(String(last)) //aedac203f42b215e6df4
//}
