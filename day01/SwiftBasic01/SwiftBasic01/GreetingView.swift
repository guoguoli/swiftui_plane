//
//  GreetingView.swift
//  SwiftBasic01
//
//  Created by 李果洲 on 2026/4/10.
//

import SwiftUI

// Step 1: 定义获取时间段的函数
func getTimePeriod() -> String {
    let hour = Calendar.current.component(.hour, from: Date())
    
    switch hour {
    case 5..<12:
        return "morning"
    case 12..<17:
        return "afternoon"
    case 17..<21:
        return "evening"
    default:
        return "night"
    }
}

// Step 2: 根据时间段返回问候语
func getGreeting(for period: String) -> String {
    switch period {
    case "morning":
        return "早安！新的一天开始了"
    case "afternoon":
        return "下午好！学习进展如何？"
    case "evening":
        return "晚上好！辛苦了"
    case "night":
        return "夜深了，早点休息"
    default:
        return "你好"
    }
}

// Step 3: 根据时间段返回图标名称
func getIconName(for period: String) -> String {
    switch period {
    case "morning":
        return "sunrise.fill"
    case "afternoon":
        return "sun.max.fill"
    case "evening":
        return "sunset.fill"
    case "night":
        return "moon.stars.fill"
    default:
        return "hello"
    }
}


struct GreetingView: View {
    let timePeriod = getTimePeriod()
    let greeting = getGreeting(for: getTimePeriod())
    let iconName = getIconName(for: getTimePeriod())
    var body: some View {
        VStack(spacing:30){
//            Image(systemName: iconName)
//                .font(.system(size: 100))
//                .foregroundColor(iconColor)
            Image(systemName: iconName)
                .font(.system(size: 100))
                .foregroundStyle(iconColor)
            // 问候语
            Text(greeting)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
            
            // 时段说明
            Text("当前时段：\(timePeriod)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
        }.padding(10)
        
    }
    // 根据时段返回对应颜色
    var iconColor: Color {
        switch timePeriod {
        case "morning":
            return .orange
        case "afternoon":
            return .yellow
        case "evening":
            return .purple
        case "night":
            return .indigo
        default:
            return .blue
        }
    }
}

#Preview {
    GreetingView()
}
