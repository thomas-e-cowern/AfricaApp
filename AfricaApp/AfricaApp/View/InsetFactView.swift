//
//  InsetFactView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/6/23.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } // MARK: Tabs
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } // MARK: End of group box
    }
}

// MARK: - Preview
struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
