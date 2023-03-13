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
