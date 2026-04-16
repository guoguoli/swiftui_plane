//
//  SwiftBasic01.swift
//  SwiftBasic01
//
//  Created by 李果洲 on 2026/4/8.
//

import Foundation

// MARK: - 常量与变量（Constants and Variables）
func test() {
    // 常量：应用名称、API密钥等不变值
    let appName = "SwiftUI学习助手"
    let apiKey = "ABC123XYZ"
    
    // 变量：用户输入、计数器等可变值
    var userScore = 0
    var isLoggedIn = false
    
    // 尝试修改常量会引发编译错误
    // appName = "新名称" // ❌ 编译错误：无法赋值给 'let' 常量
}

// MARK: - 类型注解与类型推断（Type Annotation & Type Inference）
func test01() {
    // 类型推断示例
    let inferredInt = 42          // 推断为 Int
    let inferredDouble = 3.14     // 推断为 Double
    let inferredString = "Hello"  // 推断为 String
    let inferredBool = true       // 推断为 Bool
    
    // 类型注解示例（显式声明）
    var username: String = "SwiftLearner"
    var age: Int = 25
    var temperature: Double = 36.5
    var isOnline: Bool = false
    
    // 延迟赋值的类型注解
    var message: String
    message = "欢迎学习 SwiftUI"
}

// MARK: - 核心数据类型详解
func test02() {
    //MARK: - 整数类型（Int）
    // 不同进制的整数表示
    let decimal     = 17           // 十进制
    let binary      = 0b10001      // 二进制 (17)
    let octal       = 0o21         // 八进制 (17)
    let hex         = 0x11         // 十六进制 (17)
    
    // 增强可读性的下划线分隔
    let million     = 1_000_000
    let creditCard  = 1234_5678_9012_3456
    
    // 整数边界
    let minInt      = Int.min      // 最小值
    let maxInt      = Int.max      // 最大值
    //MARK: - 浮点数类型（Float & Double）
    // 浮点数表示
    let pi = 3.141592653589793  // 默认推断为 Double
    let gravity: Float = 9.8    // 显式声明为 Float
    
    // 科学计数法
    let largeNumber = 1.25e12   // 1.25 × 10¹²
    let smallNumber = 1.25e-6   // 1.25 × 10⁻⁶
    
    // 浮点数精度注意事项
    let result = 0.1 + 0.2      // 实际值 ≈ 0.30000000000000004
    //MARK: - 字符串类型（String）
    // 字符串创建
    let greeting = "你好，世界！"
    let emptyString = ""        // 空字符串
    let multiLineString = """
    第一行
    第二行
    第三行
    """
    
    // 字符串插值
    let name = "张三"
    let age = 28
    let introduction = "我叫\(name)，今年\(age)岁。"
    
    // 字符串操作
    let text = "SwiftUI"
    let count = text.count          // 字符数：6
    let uppercased = text.uppercased()  // "SWIFTUI"
    let hasPrefix = text.hasPrefix("Sw") // true
    //MARK: - 布尔类型（Bool）
    // 布尔值声明
    let isReady = true
    let hasError = false
    
    // 逻辑运算
    let a = true
    let b = false
    let andResult = a && b     // false
    let orResult = a || b      // true
    let notResult = !a         // false
}
// MARK: - Swift 控制流（Control Flow）
func test03() {
    //    MARK: 1. if 语句
    var condition = true
    if condition {
        // 条件为 true 时执行
    }
    var temperature = 25
    
    if temperature > 30 {
        print("天气炎热，注意防暑！")
    } else {
        print("天气宜人")
    }
    // 输出：天气宜人
    let score = 85
    
    if score >= 90 {
        print("优秀")
    } else if score >= 80 {
        print("良好")
    } else if score >= 60 {
        print("及格")
    } else {
        print("需要努力")
    }
    // 输出：良好
    
    
    // 传统写法
    let weatherAdvice1: String
    if temperature <= 0 {
        weatherAdvice1 = "非常寒冷，记得穿羽绒服"
    } else if temperature >= 30 {
        weatherAdvice1 = "酷热难耐，请注意防暑"
    } else {
        weatherAdvice1 = "温度适中，舒适宜人"
    }
    
    // Swift if 表达式写法（更简洁）
    let weatherAdvice2 = if temperature <= 0 {
        "非常寒冷，记得穿羽绒服"
    } else if temperature >= 30 {
        "酷热难耐，请注意防暑"
    } else {
        "温度适中，舒适宜人"
    }
    //    MARK: 2. switch 语句
    /*
     switch value {
     case value1:
     // 匹配 value1 时执行
     case value2:
     // 匹配 value2 时执行
     default:
     // 所有情况都不匹配时执行
     }
     */
    let grade = "A"
    
    switch grade {
    case "A":
        print("满分！太棒了！")
    case "B":
        print("不错，继续加油")
    case "C":
        print("还需努力")
    case "D":
        print("需要加把劲")
    default:
        print("请加油赶上")
    }
    let fruit = "苹果"
    
    switch fruit {
    case "苹果", "梨", "桃":
        print("这是温带水果")
    case "香蕉", "芒果", "椰子":
        print("这是热带水果")
    default:
        print("未知类型")
    }
    
    
    switch score {
    case 90...100:
        print("等级：A")
    case 80..<90:        // 80 到 89（不含 90）
        print("等级：B")
    case 60..<80:        // 60 到 79
        print("等级：C")
    default:
        print("等级：D")
    }
}
//MARK: - 函数
func test04() {
    func sayHello() {
        print("你好，SwiftUI！")
    }
    
    sayHello()  // 调用函数
    
    func greet(name: String) -> String {
        return "你好，\(name)！欢迎学习 SwiftUI"
    }
    
    let message = greet(name: "小明")
    print(message)
    // 输出：你好，小明！欢迎学习 SwiftUI
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    let sum = add(a: 5, b: 3)
    print(sum)  // 输出：8
    
    // 参数标签让函数调用更像自然语言
    func greet(person name: String, from hometown: String) -> String {
        return "你好，\(name)！来自 \(hometown) 的朋友"
    }
    
    let result = greet(person: "小明", from: "北京")
    print(result)
    // 输出：你好，小明！来自 北京 的朋友
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    let sum1 = add(5, 3)  // 调用时不需要标签
    print(sum1)  // 输出：8
    
    func greet(name: String, greeting: String = "你好") -> String {
        return "\(greeting)，\(name)！"
    }
    
    print(greet(name: "小明"))
    // 输出：你好，小明！
    
    print(greet(name: "小红", greeting: "很高兴见到你"))
    // 输出：很高兴见到你，小红！
}
//MARK: - 闭包
func test05() {
    /*
     { (参数列表) -> 返回类型 in
     代码语句
     }
     */
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    
    // ✅ 方式1：完整闭包表达式
    let sorted1 = names.sorted(by: { (s1: String, s2: String) -> Bool in
        return s1 < s2
    })
    
    // ✅ 方式2：省略参数类型（Swift 自动推断）
    let sorted2 = names.sorted(by: { s1, s2 in
        return s1 < s2
    })
    
    // ✅ 方式3：单表达式省略 return（隐式返回）
    let sorted3 = names.sorted(by: { s1, s2 in s1 < s2 })
    
    // ✅ 方式4：使用 $0、$1 简写参数名
    let sorted4 = names.sorted(by: { $0 < $1 })
    
    // ✅ 方式5：运算符方法（最简）
    let sorted5 = names.sorted(by: <)
    
    //    MARK: 尾随闭包
    // 普通写法
    names.sorted(by: { s1, s2 in s1 < s2 })
    
    // ✅ 尾随闭包写法（更简洁易读）
    names.sorted { s1, s2 in s1 < s2 }
    
    /* SwiftUI 中最常用！
     Button("点击我") {
     print("按钮被点击了")
     }
     */
    //MARK: 闭包捕获值（Capturing Values）
    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0  // 外层变量
        
        let incrementer: () -> Int = {
            runningTotal += amount  // 捕获 runningTotal 和 amount
            return runningTotal
        }
        
        return incrementer
    }
    
    // 使用
    let incrementBy10 = makeIncrementer(forIncrement: 10)
    print(incrementBy10())  // 输出: 10
    print(incrementBy10())  // 输出: 20
    print(incrementBy10())  // 输出: 30
}
//MARK: - 数组（Array）
func test06() {
    //MARK: 创建数组
    // ✅ 方式1：字面量创建
    let fruits = ["苹果", "香蕉", "橙子"]
    let numbers = [1, 2, 3, 4, 5]

    // ✅ 方式2：创建空数组
    var emptyArray1: [String] = []
    var emptyArray2 = Array<String>()

    // ✅ 方式3：创建重复元素的数组
    let zeros = Array(repeating: 0, count: 5)  // [0, 0, 0, 0, 0]

    // ✅ 方式4：创建指定类型的空数组
    var scores = [Int]()  // Int 类型空数组
    
//    MARK: 数组基本操作
    var shoppingList = ["鸡蛋", "面包", "牛奶"]

    // 📊 统计
    print(shoppingList.count)      // 3
    print(shoppingList.isEmpty)    // false

    // 🔍 访问元素
    print(shoppingList[0])         // "鸡蛋"（第一个元素）
    print(shoppingList.first!)     // "鸡蛋"（安全访问）
    print(shoppingList.last!)      // "牛奶"（最后一个元素）

    // ➕ 添加元素
    shoppingList.append("黄油")     // 添加到末尾
    shoppingList += ["奶酪"]        // 追加数组
    shoppingList.insert("蜂蜜", at: 1)  // 插入到索引1

    // ❌ 删除元素
    shoppingList.remove(at: 0)      // 删除索引0的元素
    shoppingList.removeLast()       // 删除最后一个
    shoppingList.removeAll()        // 清空数组

    // ✏️ 修改元素
    shoppingList[0] = "培根"        // 修改索引0的元素
//    MARK: 遍历数组
//    let fruits = ["苹果", "香蕉", "橙子"]

    // 方式1：直接遍历
    for fruit in fruits {
        print(fruit)
    }

    // 方式2：带索引遍历
    for (index, fruit) in fruits.enumerated() {
        print("索引 \(index): \(fruit)")
    }
//    MARK: 数组高阶函数
//    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    // filter：筛选符合条件的元素
    let evenNumbers = numbers.filter { $0 % 2 == 0 }  // [2, 4, 6, 8, 10]

    // map：转换每个元素
    let doubled = numbers.map { $0 * 2 }  // [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

    // reduce：汇总所有元素
    let sum = numbers.reduce(0) { $0 + $1 }  // 55

    // sorted：排序
    let sorted = numbers.sorted { $0 > $1 }  // 降序排列
    
}
//MARK: - Swift 字典（Dictionary）
func test07(){
//    MARK: 创建字典
    // ✅ 方式1：字面量创建
    let capitals = ["中国": "北京", "日本": "东京", "韩国": "首尔"]

    // ✅ 方式2：创建空字典
    var emptyDict1: [String: Int] = [:]
    var emptyDict2 = Dictionary<String, Int>()

    // ✅ 方式3：类型推断创建
    var scores = ["数学": 95, "语文": 88, "英语": 92]
//    MARK:字典基本操作
    var student = ["name": "小明", "age": "18", "grade": "高三"]

    // 📊 统计
    print(student.count)      // 3
    print(student.isEmpty)     // false

    // 🔍 访问和修改值
    print(student["name"])              // Optional("小明") - 返回可选值
    print(student["name", default: ""]) // "小明" - 带默认值更安全

    // ➕ 添加/修改键值对
    student["class"] = "一班"     // 添加新键值对
    student["age"] = "19"        // 修改已有键的值

    // ❌ 删除键值对
    student.removeValue(forKey: "grade")  // 删除指定键
    student["class"] = nil              // 设置为 nil 也可删除
//    MARK: 遍历字典
//    let capitals = ["中国": "北京", "日本": "东京", "韩国": "首尔"]

    // 遍历所有键值对
    for (country, capital) in capitals {
        print("\(country) 的首都是 \(capital)")
    }

    // 只遍历键
    for country in capitals.keys {
        print("国家: \(country)")
    }

    // 只遍历值
    for capital in capitals.values {
        print("首都: \(capital)")
    }
}
//MARK: - 结构体和类
func test08() {
    // 结构体：用 struct 关键字
    struct Resolution {
        var width = 0
        var height = 0
    }

    // 类：用 class 关键字
    class VideoMode {
        var resolution = Resolution()
        var interlaced = false
        var frameRate = 0.0
        var name: String?
    }
//    MARK: 值类型（Value Types）- 结构体
    struct Point {
        var x: Int
        var y: Int
    }

    var point1 = Point(x: 10, y: 20)
    var point2 = point1  // 复制！point2 是独立副本

    point2.x = 50

    print(point1.x)  // 10（原数据不受影响）
    print(point2.x)  // 50
//    MARK: 引用类型（Reference Types）- 类
    class Person {
        var name: String
        var age: Int
        
        init(name: String, age: Int) {
            self.name = name
            self.age = age
        }
    }

    var person1 = Person(name: "小明", age: 18)
    var person2 = person1  // person2 引用同一个实例

    person2.name = "小红"

    print(person1.name)  // "小红"（一起变了！）
    print(person2.name)  // "小红"
//    MARK:  身份运算符（===）
    // === 比较的是"身份"（是否同一实例），而 == 比较的是"值相等"。
    if person1 === person2 {
        print("两个变量指向同一个实例 ✅")
    }
    
}
// MARK: - 属性观察器（willSet / didSet）

func test09() {
    struct StepCounter {
        var totalSteps: Int = 0 {
            willSet {
                // 即将改变前的值
                print("即将从 \(totalSteps) 步变为 \(newValue) 步")
            }
            didSet {
                // 已经改变后的值
                print("已从 \(oldValue) 步变为 \(totalSteps) 步")
            }
        }
    }

    var counter = StepCounter()
    counter.totalSteps = 10
    // 输出:
    // 即将从 0 步变为 10 步
    // 已从 0 步变为 10 步
}
// MARK: - mutating 方法
func test10() {
    struct Point {
        var x = 0.0
        var y = 0.0
        
        // 必须加 mutating，否则报错
        mutating func moveBy(x deltaX: Double, y deltaY: Double) {
            x += deltaX
            y += deltaY
        }
    }

    var point = Point(x: 1.0, y: 1.0)
    point.moveBy(x: 2.0, y: 3.0)
    print("新位置: (\(point.x), \(point.y))")  // (3.0, 4.0)
}
