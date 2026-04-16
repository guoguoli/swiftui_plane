//
//  ContentView.swift
//  SwiftBasic01
//
//  Created by 李果洲 on 2026/4/8.
//

import SwiftUI

struct ContentView: View {
    let userName = "张三"
    let userAge = 28
    @State var viewCount = 0
    @State var userScore = 85.5
    let isPremium = true
    var body: some View {
        VStack(spacing: 20) {
            Text("个人信息卡片")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Divider()
            
            VStack(alignment: .leading,spacing: 12) {
                infoRow(title: "姓名", value: userName)
                infoRow(title: "年龄", value: "\(userAge)")
                infoRow(title: "学习得分", value: String(format: "%.1f", userScore))
                infoRow(title: "会员状态", value: isPremium ? "尊贵会员":"普通会员")
            }
            .padding()
            .foregroundColor(isPremium ? .yellow:.gray)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(.systemBackground))
                    .shadow(color:.gray.opacity(0.3),radius: 5)
            )
            
            
            Button(action: {
                userScore += 5.0
                getStudents()
            }) {
                Text("增加分数")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            
        }
        .padding()
        .onAppear {
            viewCount += 1
           
        }
    }
    func infoRow(title: String, value: String) -> some View {
        HStack {
            Text(title+"：")
                .fontWeight(.semibold)
            Spacer()
            Text(value)
                .foregroundColor(.secondary)
        }
    }
    func getStudents() {
        NetWorkSevice.shared.fetchStudentList { students in
            
        }
    }
    
}

#Preview {
    ContentView()
}
