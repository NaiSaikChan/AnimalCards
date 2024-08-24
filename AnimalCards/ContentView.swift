//
//  ContentView.swift
//  AnimalCards
//
//  Created by SaikChan on 23/08/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AnimalViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            VStack {
                // Language Picker with Localization
                Picker("Language", selection: $viewModel.selectedLanguage) {
                    Text(NSLocalizedString("language_english", comment: "")).tag(Animal.Language.english)
                    Text(NSLocalizedString("language_thai", comment: "")).tag(Animal.Language.thai)
                    Text(NSLocalizedString("language_japanese", comment: "")).tag(Animal.Language.japanese)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.animals) { animal in
                            AnimalCardView(animal: animal, viewModel: viewModel)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Animal Sound")
        }
    }
}

#Preview {
    ContentView()
}
