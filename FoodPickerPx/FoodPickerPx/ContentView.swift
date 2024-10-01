//
//  ContentView.swift
//  FoodPickerPx
//
//  Created by ouyo on 2024/09/27.
//

import SwiftUI

struct ContentView: View {
    let food = Food.examples;
    @State private var selectFood: Food?  // 涉及到状态的修改 需要加上@State
    
    var body: some View {
        VStack(
            spacing: 30
        ) {
            Group {
                if selectFood == .none {
                    Image("dinner")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }else{
                    Text(selectFood!.image)
                        .font(.system(size: 200))
                        .minimumScaleFactor(0.7)
                        
                }
            }.frame(height: 250)
            
            // minimumScaleFactor 可以让这个元素放在这个空间内
            Text("今日何を食べたい").font(.title).bold()
            
            if selectFood != .none {
                HStack {
                    Text(selectFood?.name ?? "")
                        .font(.largeTitle)
                        .bold().foregroundColor(.green)
                    
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle.weight(.black)).foregroundColor(.secondary)
                }
                
                Text("热量 \(selectFood!.calorie.formatted()) 大卡")
                
                HStack{
                    VStack(spacing: 12) {
                        Text("蛋白质")
                        Text(selectFood!.protein.formatted() + " g")
                    }
                    Divider().padding(.horizontal)
                    VStack(spacing: 12) {
                        Text("脂肪")
                        Text(selectFood!.fat.formatted() + " g")
                    }
                    Divider().padding(.horizontal)
                    VStack(spacing: 12) {
                        Text("碳水")
                        Text(selectFood!.carb.formatted() + " g")
                    }
                }.padding()
                    .background(RoundedRectangle(cornerRadius: 8).foregroundColor(Color(.secondarySystemBackground))).frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            
            // Color.clear
            // Spacer()
            
            Button(action: {
                selectFood = food.shuffled().first{$0 != selectFood}
            }, label: {
                Text(selectFood == .none ? "教えて" : "换一个")
                    .frame(width: 200, alignment: .center)
                    .transition(.scale.combined(with: .slide))
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
        }.animation(.easeIn(duration: 0.5),value: selectFood)
    }
}

extension ContentView {
    init(selectFood: Food) {
        _selectFood = State(wrappedValue: selectFood)
    }
}

#Preview {
    ContentView(selectFood: .examples.first!)
}
