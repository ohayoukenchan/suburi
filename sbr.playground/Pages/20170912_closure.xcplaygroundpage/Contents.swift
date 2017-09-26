//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

let someValue = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}

print(someValue(9,3))

func add(_ closure: (Int, Int) -> Int) {
    
    // closure(10, 20) = num1 + num
    print(closure(10, 20))
}


// クロージャをメソッドの引数として渡す
add({ (num1, num2) -> (Int) in
    return num1 + num2
})


//返り値やreturnを省略できる
//add({ (num1, num2) in
//    num1 + num2
//})


func applyMutliplication(_ value: Int, multFunction: (Int) -> Int) -> Int {
    
    return multFunction(value)
}

var result = applyMutliplication(2, multFunction: {value in
    value * 3
})

print(result) // 6


// Completion blocks

func countNum(completion: () -> ()) {
    
    for index in 0...100 {
        print(index)
    }
    completion()
    print("done")
}

countNum { for a in 1...10 { print(a + 5)} }


(URLSession(configuration: URLSessionConfiguration.default)).dataTask(with: URL, completionHandler: { (imageData, response, error) in
    
    if let data = imageData {
        
        DispatchQueue.main.async {
            //ダウンロードが終わったら、画像を見せる
            self.imageView.image = UIImage(data: data)
        }
    }
}).resume()


