//
//  ShopingCarView.swift
//  SwiftBasic01
//
//  Created by 李果洲 on 2026/4/10.
//

import SwiftUI
// 商品结构体
struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let image: String
}

// 购物车项
struct CartItem: Identifiable {
    let id = UUID()
    let product: Product
    var quantity: Int
}
struct ProductRow: View {
    let product: Product
    let onAddToCart: () -> Void
    
    var body: some View {
        HStack {
            Image(systemName: product.image)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .frame(width: 60)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                Text("¥\(Int(product.price))")
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Button(action: onAddToCart) {
                Image(systemName: "plus.circle.fill")
                    .font(.title2)
                    .foregroundColor(.green)
            }
        }
        .padding(.vertical, 4)
    }
}

// 购物车项行视图
struct CartItemRow: View {
    let item: CartItem
    let onRemove: () -> Void
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.product.name)
                    .font(.headline)
                Text("¥\(Int(item.product.price)) × \(item.quantity)")
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Text("¥\(Int(item.product.price * Double(item.quantity)))")
                .font(.headline)
                .foregroundColor(.orange)
            
            Button(action: onRemove) {
                Image(systemName: "minus.circle.fill")
                    .font(.title2)
                    .foregroundColor(.red)
            }
        }
        .padding(.vertical, 4)
    }
}

// 购物车结算栏
struct CartSummary: View {
    let totalPrice: Double
    
    var body: some View {
        HStack {
            Text("合计:")
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("¥\(Int(totalPrice))")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.orange)
            
            Button("结算") {
                print("结算按钮被点击")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding()
        .background(Color(.systemGray6))
    }
}
struct ShopingCarView: View {
    // 商品列表（数组存储）
    @State private var products: [Product] = [
        Product(name: "iPhone 15", price: 6999, image: "iphone"),
        Product(name: "MacBook Pro", price: 12999, image: "laptopcomputer"),
        Product(name: "AirPods Pro", price: 1899, image: "airpodspro"),
        Product(name: "Apple Watch", price: 2999, image: "applewatch")
    ]
    // 购物车（数组存储）
    @State private var cart: [CartItem] = []
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // 商品列表
                List {
                    Section("商品列表") {
                        ForEach(products) { product in
                            ProductRow(product: product) {
                                addToCart(product)
                            }
                        }
                    }
                    
                    // 购物车列表
                    if !cart.isEmpty {
                        Section("购物车") {
                            ForEach(cart) { item in
                                CartItemRow(item: item) {
                                    removeFromCart(item)
                                }
                            }
                        }
                    }
                }
                
                // 底部结算栏
                CartSummary(totalPrice: calculateTotal())
            }
            .navigationTitle("购物车")
        }
    }
        // 添加商品到购物车
        func addToCart(_ product: Product) {
            // 检查商品是否已在购物车
            if let index = cart.firstIndex(where: { $0.product.id == product.id }) {
                // 已存在，增加数量
                cart[index].quantity += 1
            } else {
                // 不存在，添加新项
                let newItem = CartItem(product: product, quantity: 1)
                cart.append(newItem)
            }
        }
        
        // 从购物车删除商品
        func removeFromCart(_ item: CartItem) {
            if let index = cart.firstIndex(where: { $0.id == item.id }) {
                if cart[index].quantity > 1 {
                    cart[index].quantity -= 1
                } else {
                    cart.remove(at: index)
                }
            }
        }
        
        // 计算总价
        func calculateTotal() -> Double {
            cart.reduce(0) { $0 + ($1.product.price * Double($1.quantity)) }
        }
    }
    
    #Preview {
        ShopingCarView()
    }
