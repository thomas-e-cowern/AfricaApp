//
//  InsetGalleryView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 6/30/23.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: Properties
    let animal: Animal
    
    // MARK: Body
    var body: some View {
        ScrollView {
            HStack {
                ForEach(animal.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }  //: End of ForEach
            } //: End of HStack
        } //: End of HStack
        Text("")
    }  //: End of ScrollView
}

// MARK: Previews
struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
