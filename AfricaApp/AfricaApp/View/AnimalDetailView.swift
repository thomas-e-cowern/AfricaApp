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
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background {
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    }
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // Gallery
                Group {

                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                // Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                }
                .padding(.horizontal)
                
                // Description
                
                // Map
                
                // Link
                

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
