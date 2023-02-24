//
//  ContentView.swift
//  MagicBallSwiftUI
//
//  Created by Karen Vardanian on 22.02.2023.
//

import SwiftUI



struct ContentView: View {
    
    let colorlightGreen = Color(red: 0.52, green: 0.98, blue: 0.82)
    let colorGrayShadow = Color(red: 0.33, green: 0.62, blue: 0.53)
    
    @State private var currentAnswer = R.String.askSome
    let answer = Answers()
    let randomNumber = 0..<Answers().allAnswer.count
    
    var body: some View {
        ZStack {
            colorlightGreen
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Circle()
                        .fill(
                            .shadow(.inner(color: colorGrayShadow, radius: 30, x: 13, y: 3))
                            .shadow(.inner(color: colorGrayShadow, radius: 10, x: -3, y: -3))
                        )
                        .foregroundColor(colorlightGreen)
                        
                    Text(currentAnswer)
                        .foregroundColor(.indigo)
                        .font(.title)
                        
                }
                .padding(.top, 20)
                
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 100, height: 50)
                        .shadow(color: colorGrayShadow, radius: 5, x: 4, y: 4)
                    Button(R.String.buttonTitle) {
                        currentAnswer = answer.allAnswer.randomElement() ?? "YES"
                        
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
