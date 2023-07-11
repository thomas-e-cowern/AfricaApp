//
//  ContentView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 4/5/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: Properties
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    
    // MARK: Body
    var body: some View {
        NavigationStack {
            Group {
                List {
                    CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    ForEach(animals) { animal in
                        NavigationLink(destination: AnimalDetailView(animal: animal)) {
                            AnimalListItemView(animal: animal)
                        } // MARK: End of Navigation
                    }  //: End of ForEach
                } // MARK: End of list
            } //: End of group
            .navigationTitle("Africa")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            print("List view activated")
                            isGridViewActive = false
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        
                        // Grid
                        Button {
                            print("Gridview is activated")
                            isGridViewActive = true
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.grid.2x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }

                    }
                }
            }
        } // EONS
    }
}
// MARK: Priview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
