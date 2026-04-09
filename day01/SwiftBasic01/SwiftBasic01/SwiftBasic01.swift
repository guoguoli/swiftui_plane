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
