//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


extension String {
    func twttrPhoto() -> String {
        return replacingOccurrences(
            of: "^https?://(.+)_normal(.+)$",
            with: "https://$1$2",
            options: .regularExpression,
            range: self.range(of: self))
    }
}


let url = "http://pbs.twimg.com/profile_images/1610656772/nTotani_normal.jpg"

url.twttrPhoto()
