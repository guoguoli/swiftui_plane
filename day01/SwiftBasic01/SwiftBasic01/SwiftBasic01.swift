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
