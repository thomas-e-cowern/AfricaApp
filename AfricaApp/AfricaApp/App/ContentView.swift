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
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    // MARK: Functions
    func gridSwitch() {
        print("Grid Switched")
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid Number: \(gridColumn)")
        
        // toolbar image
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x3"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    
    // MARK: Body
    var body: some View {
        NavigationStack {
            Group {
                if !isGridViewActive {
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
                } else {
                    ScrollView(.vertical, showsIndicators: false    ) {
                        LazyVGrid(columns: gridLayout, alignment: .center) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                } // MARK: End of Navigation
                            }  //: End of ForEach
                        } //: End of grid
                        .padding(10)
                        .animation(.easeIn, value: 0)
                    }  //: End of ScrollView
                } //: End of if else
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
                            gridSwitch()
                        } label: {
                            Image(systemName: toolbarIcon)
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
