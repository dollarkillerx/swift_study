//
//  ContentView.swift
//  FoodPickerPx
//
//  Created by ouyo on 2024/09/27.
//

import SwiftUI

struct ContentView: View {
    let food = [
        "ハンバーガー",
        "サラダ",
        "ピザ",
        "スパゲティー",
        "チキン弁当",
        "刀削麺",
        "火鍋",
        "ビーフラードルスープ",
        "関東炊き"
    ]
    
    @State private var selectFood: String?  // 涉及到状态的修改 需要加上@State
    
    var body: some View {
        VStack(
            spacing: 30
        ) {
            Image("dinner")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                
            Text("今日何を食べたい").font(.title).bold()
            
            if selectFood != .none {
                Text(selectFood ?? "")
                    .font(.largeTitle)
                    .bold().foregroundColor(.green)
            }
            
            Button(action: {
                selectFood = food.shuffled().first{$0 != selectFood}
            }, label: {
                Text(selectFood == .none ? "教えて" : "换一个").frame(width: 200, alignment: .center)
            })
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.cyan).padding(.bottom, -15)
            
            
            if selectFood != .none {
                Button(action: {
                    selectFood = .none
                }, label: {
                    Text("重制").frame(width: 200, alignment: .center)
                })
                .font(.title)
                .buttonStyle(.bordered)
                .tint(.cyan)
            }
        }.animation(.easeIn,value: selectFood)
    }
}

#Preview {
    ContentView()
}
