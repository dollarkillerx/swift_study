import Cocoa

var greeting = "Hello, playground"

print(greeting)

var a: Int = 12;
var b = 13;
print("a + b : %d", a + b)


var c: Float = 1.2
var d: Double = 1.3

print("c + d", Double(c) + d)

// 变量定义： var let(const)

print(type(of: c) == type(of: d))


func sp(_ item: Any...) {
    item.forEach { item in
        print(item)
    }
}

sp(1,2,3,4,5)

for index in 1...10 {
    if index % 2 == 0 {
        print(index)
    }
}

func helloworld(name: String) -> String {
    return "hello \(name)"
}

print(helloworld(name: "dollarkillerx"))

func greet(person: String, alreauGreeted: Bool? = nil) -> String {
    if alreauGreeted ?? false {
        return "greet(person: <#T##String#>, alreauGreeted: <#T##Bool#>)"
    }
    
    return "false"
}

print(greet(person: "hello world"))
print(greet(person: "hello world 2", alreauGreeted: true))



// guard 拦截语句
func guardTest(param: Int) {
    guard param < 10 else {
        print("in guard ", param)
        return
    }
    
    print("jct ",param)
}

guardTest(param: 12)
guardTest(param: 5)


print("hello world")

class Phone {
    
}

// let myPhone: Phone = "1231"

typealias Human = (name: String, height: Double, hairColor: String)

let girl: Human = ("ani", 155, "King")
print("girl: \(girl.name), hight: \(girl.height), color: \(girl.hairColor)")

for i in 0...199 {
    print(i)
}

print("====================")

typealias 水果 = (name: String, price: Double)

let fruite: [水果] = [
    ("苹果🍎", 40),
    ("香蕉🍌", 10),
    ("奇异果🥝", 40),
    ("辣椒🌶️", 3),
    ("桃子🍑", 20),
]


// 排序
let sort水果 = fruite.sorted{
    a,b in a.price > b.price
}

print(sort水果)

let 水果str = sort水果.map { (name: String, price: Double) in
    return "\(name) - \(price)"
}

print(水果str)

var count = 1
let totalPrice = sort水果.reduce(0) { result, fruit in // result 上次返回的参数
    count += 1
    return result + fruit.price
}
//let totalPrice = sort水果.reduce(0) { result, (name: String, price: Double) in
//    count += 1
//    return result + price
//}

print(totalPrice)

let 高价水果 = sort水果.filter{
    fruit in
    fruit.price >= 40
}


print(高价水果)
