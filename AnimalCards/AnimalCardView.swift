//
//  AnimalCardView.swift
//  AnimalCards
//
//  Created by SaikChan on 25/08/2024.
//
import SwiftUI

struct AnimalCardView: View {
    let animal: Animal
    @ObservedObject var viewModel: AnimalViewModel
    
    @State private var isPlaying = false
    
    var body: some View {
        VStack(spacing: 10) {
            
            Image(animal.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .cornerRadius(10)
            .scaleEffect(isPlaying ? 1.1 : 1.0)
            
            Text(viewModel.getName(for: animal))
                .font(.title)
                .foregroundColor(.white)
                .padding(.bottom, 10)
                .scaleEffect(isPlaying ? 1.2 : 1.0)
                .animation(.spring(), value: isPlaying)
            
            // Language Buttons with Flag Icons
            HStack(spacing: 10) {
                languageButton(for: .english, flagIcon: "EnglishFlag")
                languageButton(for: .thai, flagIcon: "ThailandFlag")
                languageButton(for: .japanese, flagIcon: "JapanFlag")
                languageButton(for: .mon, flagIcon: "MonFlag")
                languageButton(for: .myanmar, flagIcon: "MyFlag")
            }
        }
        .padding()
        .frame(width: .infinity, height: 400)
        .background(isPlaying ? Color.yellow : Color.green)
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding([.horizontal, .vertical], 5)
    }
    
    private func languageButton(for language: Animal.Language, flagIcon: String) -> some View {
        Button(action: {
            viewModel.selectedLanguage = language
            viewModel.playSound(for: animal)
            withAnimation {
                isPlaying = true
                let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
                impactFeedback.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation {
                    isPlaying = false
                }
            }
        }) {
            Image(flagIcon)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 40)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
        }
        .accessibilityLabel("\(getLanguageName(for: language)) sound button")
        .accessibilityHint("Double tap to play the sound in \(getLanguageName(for: language))")
    }
    
    private func getLanguageName(for language: Animal.Language) -> String {
        switch language {
        case .english:
            return "English"
        case .thai:
            return "Thai"
        case .japanese:
            return "Japanese"
        case .myanmar:
            return "Myanmar"
        case .mon:
            return "Mon"
        }
    }
}


    /*
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
     */

