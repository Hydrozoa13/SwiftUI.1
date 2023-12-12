//
//  ColorCircle.swift
//  SwiftUI.1
//
//  Created by Евгений Лойко on 12.12.23.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(0.3)
            .overlay(Circle().stroke(Color.white, lineWidth:  3))
            .shadow(color: .black, radius: 5)
    }
}

#Preview {
    ColorCircle(color: .red)
}
