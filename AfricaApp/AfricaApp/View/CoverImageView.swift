//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 6/30/23.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: Properties
    
    // MARK: Body
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-lion")
                    .resizable()
                .scaledToFit()
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
