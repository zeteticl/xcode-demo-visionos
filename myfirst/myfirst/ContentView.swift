//
//  ContentView.swift
//  myfirst
//
//  Created by Z QQ on 2024/9/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @EnvironmentObject var appModel: AppModel // 獲取 AppModel
    @State private var backgroundColor: Color = .black // 初始背景顏色

    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")

            ToggleImmersiveSpaceButton()
            
            // 新增的按鈕，改變背景顏色
            Button(action: {
                // 隨機改變背景顏色
                backgroundColor = Color.random()
            }) {
                Text("改變背景顏色") // 按鈕顯示的文字
                    .padding()
                    .background(Color.blue) // 按鈕背景顏色
                    .foregroundColor(.white) // 按鈕文字顏色
                    .cornerRadius(8) // 按鈕圓角
            }
        }
        .padding()
        .background(backgroundColor) // 設置背景顏色
        .edgesIgnoringSafeArea(.all) // 讓背景顏色覆蓋全圖
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environmentObject(AppModel()) // 使用 environmentObject 注入 AppModel
}

// 擴展 Color，添加隨機顏色功能
extension Color {
    static func random() -> Color {
        return Color(red: Double.random(in: 0...1),
                     green: Double.random(in: 0...1),
                     blue: Double.random(in: 0...1))
    }
}
