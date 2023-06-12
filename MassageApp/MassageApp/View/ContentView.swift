//
//  ContentView.swift
//  MassageApp
//
//  Created by Karen Vardanian on 12.06.2023.
//

import SwiftUI



struct ContentView: View {
    
    @StateObject private var viewModel = MassageViewModel()
    
    var body: some View {
        VStack {
            Button(action: {
                viewModel.toggleVibration()
            }) {
                Text(viewModel.buttonText)
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
