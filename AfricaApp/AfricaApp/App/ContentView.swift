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
    
    // MARK: Body
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            } // EOL
            .navigationTitle("Africa")
        } // EONS
    }
}
// MARK: Priview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
