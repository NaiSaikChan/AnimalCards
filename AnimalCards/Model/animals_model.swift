//
//  animals_model.swift
//  AnimalCards
//
//  Created by SaikChan on 24/08/2024.
//

import Foundation
struct Animal: Identifiable {
    let id = UUID()
    let name: [Language: String]
    let soundFileNames: [Language: String]
    let imageName: String
    
    enum Language {
        case english
        case thai
        case japanese
    }
}
