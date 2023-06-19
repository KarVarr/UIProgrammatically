//
//  ContentView.swift
//  MassageApp
//
//  Created by Karen Vardanian on 12.06.2023.
//

import SwiftUI


struct ContentView: View {
    @State private var intensity: Float = 0.5
    let hapticManager = HapticManager()
    
    var body: some View {
        VStack {
            Slider(value: $intensity, in: 0...1, step: 0.1)
                .padding()
            
            Button(action: {
                hapticManager.playHaptic(intensity: intensity)
            }) {
                Text("Play Haptic")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                hapticManager.stopHaptic()
            }) {
                Text("Stop Haptic")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
