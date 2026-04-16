//
//  UseTextFieldView.swift
//  SwiftBasic01
//
//  Created by 李果洲 on 2026/4/10.
//

import SwiftUI

struct UseTextFieldView: View {
    @State private var text: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            TextField("请输入文本", text: $text)
                .padding()
            
            Text("你输入了: \(text)")
            
            SecureField("请输入密码", text: $password)
                .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    UseTextFieldView()
}
