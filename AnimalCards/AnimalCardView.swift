//
//  AnimalCardView.swift
//  AnimalCards
//
//  Created by SaikChan on 25/08/2024.
//

import SwiftUI

struct AnimalCardView: View {
    let animal : Animal
    @ObservedObject var viewModel: AnimalViewModel
    
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            viewModel.playSound(for: animal)
            withAnimation {
                isPlaying = true
                // Add haptic feedback
                let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
                impactFeedback.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation {
                    isPlaying = false
                }
            }
        })
        {
            VStack(spacing: 10) {
                Image(animal.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(10)
                    .scaleEffect(isPlaying ? 1.1 : 1.0)
                
                Text(viewModel.getName(for: animal))
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                    .scaleEffect(isPlaying ? 1.2 : 1.0)
                    .animation(.spring(), value: isPlaying)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(isPlaying ? Color.yellow : Color.green)
            .cornerRadius(20)
            .shadow(radius: 5)
            .accessibilityLabel("\(viewModel.getName(for: animal)) sound card")
            .accessibilityHint("Dobule tap to paly the \(viewModel.getName(for: animal)) sound")
        }
        .padding([.horizontal, .vertical], 5)
    }
}

