//
//  AnimalDetailView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 6/30/23.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: Properties
    
    let animal: Animal
    
    // MARK: Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Hero image
                
                // Title
                
                // Headlin
                
                // Gallery
                
                // Facts
                
                // Description
                
                // Map
                
                // Link
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: Previews
struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[5])
        }
    }
}
