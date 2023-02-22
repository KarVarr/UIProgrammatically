//
//  ContentView.swift
//  MagicBallSwiftUI
//
//  Created by Karen Vardanian on 22.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.mint
                .background(.mint)
            
            VStack {
                ZStack {
                    Circle()
                        .fill(.indigo)
                        .shadow(radius: 5)
                    Text("YES, Defiantly")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                .padding(.top, 20)
                
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 100, height: 50)
                        .shadow(color: .yellow, radius: 1, x: 6, y:  6)
                    Button("CLICK") {
                        
                    }
                    .foregroundColor(.white)
                }
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
