//
//  UseButtonDemo.swift
//  SwiftBasic01
//
//  Created by 李果洲 on 2026/4/10.
//

import SwiftUI

struct UseButtonDemo: View {
    @State private var count = 0
    var body: some View {
        VStack {
            // ✅ 方式1：最简单形式（尾随闭包）
            Button("点击我") {
                print("按钮被点击了")
            }

            // ✅ 方式2：标准写法
            Button(action: {
                print("按钮被点击了")
            }) {
                Text("点击我")
            }

            // ✅ 方式3：自定义按钮内容
            Button(action: {
                print("下载完成")
            }) {
                HStack {
                    Image(systemName: "arrow.down.circle.fill")
                    Text("下载")
                }
                .font(.title2)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            VStack(spacing: 20) {
                        Text("计数: \(count)")
                            .font(.largeTitle)
                        
                        Button("增加") {
                            count += 1
                        }
                        
                        Button("减少") {
                            count -= 1
                        }
                        
                        Button("重置") {
                            count = 0
                        }
                    }
            VStack {
                // 普通样式
                Button("普通按钮") {}
                .buttonStyle(.plain)

                // 带边框样式
                Button("边框按钮") {}
                .buttonStyle(.bordered)

                // 突出显示样式（彩色背景）
                Button("突出按钮") {}
                .buttonStyle(.borderedProminent)

                // 无边框样式
                Button("无边框按钮") {}
                .buttonStyle(.borderless)

                // 控件大小
                Button("大按钮") {}
                .controlSize(.large)

                Button("小按钮") {}
                .controlSize(.small)
            }
            HStack {
                // 破坏性操作（红色）
                Button(role: .destructive) {
                    print("删除操作")
                } label: {
                    Text("删除")
                }

                // 取消操作
                Button(role: .cancel) {
                    print("取消操作")
                } label: {
                    Text("取消")
                }
            }
        }
    }
}

#Preview {
    UseButtonDemo()
}
