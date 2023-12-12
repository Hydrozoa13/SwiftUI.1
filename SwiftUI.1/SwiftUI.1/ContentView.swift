//
//  ContentView.swift
//  SwiftUI.1
//
//  Created by Евгений Лойко on 12.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ColorCircle(color: .red)
            ColorCircle(color: .yellow)
            ColorCircle(color: .green)
            Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}
