//
//  GalleryView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 4/5/23.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - Properties
    
    @State private var selectedAnimal: String = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let hapticImact = UIImpactFeedbackGenerator(style: .medium)
    
    // Simple grid definition
    //let gridLayout: [GridItem] = [
    //    GridItem(.flexible()),
    //    GridItem(.flexible()),
    //    GridItem(.flexible())
    //]
    
    // Efficient grid definition
    // let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    // Dynamic grid layout
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            // Selected image
            Image(selectedAnimal)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
            Slider(value: $gridColumn, in: 2...4, step: 1)
                .padding(.horizontal)
                .onChange(of: gridColumn) { newValue in
                    withAnimation(.easeIn) {
                        gridSwitch()
                    }
                }
            
            // Grid
            VStack(alignment: .center, spacing: 30) {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                hapticImact.impactOccurred()
                            }
                    } //: End of ForEach
                } //: End of grid
                .onAppear {
                    gridSwitch()
                }
            } //: End of VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }  //: End of ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - Preview
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
