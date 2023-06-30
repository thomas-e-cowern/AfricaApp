//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 6/30/23.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: Body
    var body: some View {
        TabView {
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
            } //: Loop
        } //: Tab
        .tabViewStyle(.page)
    }
}

// MARK: Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
