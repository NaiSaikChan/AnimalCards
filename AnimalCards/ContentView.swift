//
//  ContentView.swift
//  AnimalCards
//
//  Created by SaikChan on 23/08/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AnimalViewModel()
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var columns: [GridItem] {
        // Determine the number of columns base on size class
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            // iPhone Portrait Mode: 1 Column
            return [GridItem(.flexible())]
        } else {
            // iPhone Landscape or iPad (Both Orientations): 2 Columns
            return [GridItem(.flexible()), GridItem(.flexible())]
        }
    }
    
    var body: some View {
        NavigationStack{
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.animals) { animal in
                        AnimalCardView(animal: animal, viewModel: viewModel)
                    }
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Animal Sound")
        }
    }
}

#Preview {
    ContentView()
}
