//
//  ContentView.swift
//  SwiftUI.1
//
//  Created by Евгений Лойко on 12.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorsActive = [true, false, false]
    
    var body: some View {
        VStack {
            ZStack {
                Color.gray
                    .frame(width: 200, height: 500)
                    .cornerRadius(30)
                VStack {
                    ColorCircle(color: .red, isActive: colorsActive[0])
                    ColorCircle(color: .yellow, isActive: colorsActive[1])
                    ColorCircle(color: .green, isActive: colorsActive[2])
                }
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                changeActiveColor()
            }) {
                Text("NEXT")
                    .font(.title)
                    .padding()
                    .background(Color(UIColor.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(.buttonBorder)
            }
            .padding()
        }
    }
    
    private func changeActiveColor() {
        switch colorsActive {
            case [true, true, false]:  colorsActive[0].toggle()
                                       colorsActive[1].toggle()
                                       colorsActive[2].toggle()
            
            case [false, false, true]: colorsActive[1].toggle()
                                       colorsActive[2].toggle()
            
            case [false, true, false]: colorsActive[0].toggle()
                                       colorsActive[1].toggle()
            
            default: colorsActive[1].toggle()
        }
    }
}

#Preview {
    ContentView()
}
