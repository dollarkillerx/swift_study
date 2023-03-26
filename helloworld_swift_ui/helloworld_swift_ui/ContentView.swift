//
//  ContentView.swift
//  helloworld_swift_ui
//
//  Created by おおやく on 2023/03/13.
//

import SwiftUI

class SomeClass {
    var selectFood: String?
}

struct ContentView: View {
    let food = ["漢堡", "沙拉", "披薩", "義大利麵", "雞腿便當", "刀削麵", "火鍋", "牛肉麵", "關東煮"]
    @State var selectFood: String?
    let someClass = SomeClass()
    

    var body: some View {
        VStack{
            Image("dinner")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("今天吃什么呢？")
                .font(.largeTitle)
                .bold()
            
            Text(selectFood ?? "")
                .font(.title)
                .bold()
                .foregroundColor(.green)
                .padding()
            
            Button("告诉我") {
                selectFood = food.shuffled().filter{
                    $0 != selectFood
                }.first
                
//                someClass.selectFood = food.shuffled().filter{
//                    $0 != selectFood
//                }.first
            }.font(.title).buttonStyle(.borderedProminent)
        }.padding()
            .animation(.easeInOut, value: selectFood)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/**
 Image("dinner")
     .resizable()
     .aspectRatio(contentMode: .fit)
 
 .resizable() 修饰符告诉 SwiftUI 在显示图像时允许其调整大小。这意味着，无论图像的原始大小如何，它都将在 UI 中以相同的比例显示。如果不添加此修饰符，图像可能会因过大或过小而变形。

 另一个修饰符是 .aspectRatio(contentMode: .fit)，它告诉 SwiftUI 如何调整图像的高度和宽度以适应其父容器的大小。在这种情况下，.fit 参数强制图像按照其原始纵横比缩放，直到它可以完全适合其父容器。如果没有此修饰符，图像可能会拉伸或压缩以适应其父容器的大小。
 */
