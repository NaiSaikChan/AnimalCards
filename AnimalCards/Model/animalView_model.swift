//
//  animalView_model.swift
//  AnimalCards
//
//  Created by SaikChan on 24/08/2024.
//

import Foundation
import SwiftUI
import AVFoundation

class AnimalViewModel: ObservableObject {
    @Published var animals: [Animal] = [
        Animal(
            name: [.english: "Cat", .thai: "แมว", .japanese: "猫"],
            soundFileNames: [.english: "cat_en", .thai: "cat_th", .japanese: "cat_jp"],
            imageName: "cat"
        ),
        Animal(
            name: [.english: "Dog", .thai: "หมา", .japanese: "犬"],
            soundFileNames: [.english: "dog_en", .thai: "dog_th", .japanese: "dog_jp"],
            imageName: "dog"
        ),
        Animal(
            name: [.english: "Elephant", .thai: "ช้าง", .japanese: "象"],
            soundFileNames: [.english: "elephant_en", .thai: "elephant_th", .japanese: "elephant_jp"],
            imageName: "elephant"
        ),
    ]
    
    @Published var selectedLanguage: Animal.Language = .english
    
    var player: AVAudioPlayer?
    private var speechSynthesize = AVSpeechSynthesizer()
    
    func playSound(for animal: Animal) {
        // Play animal sound if available
        if let soundFileNames = animal.soundFileNames[selectedLanguage],
           let url = Bundle.main.url(forResource: soundFileNames, withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }else{
            // If no sound file, speak the animal's name using speech synthesis
            speak(animalName: getName(for: animal))
        }
    }
    
    func getName(for animal: Animal) -> String {
        return animal.name[selectedLanguage] ?? "Unknow"
    }
    
    private func speak(animalName: String) {
        let utterance = AVSpeechUtterance(string: animalName)
        
        switch selectedLanguage {
        case .english:
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        case .thai:
            utterance.voice = AVSpeechSynthesisVoice(language: "th-TH")
        case .japanese:
            utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        }
        
        utterance.rate = AVSpeechUtteranceDefaultSpeechRate
        speechSynthesize.speak(utterance)
    }
}
