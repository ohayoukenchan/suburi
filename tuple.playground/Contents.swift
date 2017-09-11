//: Playground - noun: a place where people can play
//
import UIKit

var str = "Hello, playground"

let item = (120, "コーラ")
item.0
item.1

let beverage = (price: 120, name: "コーラ")
beverage.0
beverage.1

let productA: (price: Int, name: String) = (price: 100, name: "サイダー")
print(productA.name)
print(productA.price)
productA.name

var banana: (price: Int, String) = (99, "完熟王")
banana.1

typealias bananaUmai = (price: Int, name: String, size: String)
//extension bananaUmai {
//    hoge: String
//}

func purchaseBanana(price: Int , name: String, size: String) -> bananaUmai {
    let banana = bananaUmai(price, name, size)
    return banana
}

let myBanana = purchaseBanana(price: 120, name: "完熟王", size: "L")
myBanana.size

let entry = ("花子", "090-XXXX-XXXX", 22)
let (name, phoneNumber, age) = entry
name
phoneNumber
age

var considerConfession: (name: String, phoneNumber: String, age: Int) = ("いずみ", "090-0000-0000", 32)
considerConfession.name

//considerConfession = "hoge"
considerConfession = ("aya", "000-0000-0000", 40)
considerConfession.name

// Compare tuple


("石原さとみ","ホリプロ",30) < ("石田ゆり子","風鈴舎",47)

("石原さとみ","ホリプロ",30) == ("沢尻エリカ","エル・エクストラテレストレ", 30)
("石原さとみ","ホリプロ",30) > ("石原さとむ","ホリプロ", 30)

"a" < "b"

typealias actress = (name: String, company: String , age: Int)

var 能年玲奈 = actress("能年玲奈", "レプロ" ,21)
var のん = 能年玲奈
のん = actress("のん", "", 23)

let 石原さとみ = actress("石原さとみ","ホリプロ",30)

//actress("aaa","bbb",33)

石原さとみ < のん
石原さとみ > のん
石原さとみ == のん

のん < 能年玲奈

var non = actress("Non", "repro", 21)
var nonCopy = non
var non2 = actress("Non", "repro", 21)

non == nonCopy
non2 == non
