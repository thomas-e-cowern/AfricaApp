//
//  MapAnnotationView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/11/23.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - Properties
    var location: NationalParkLocation
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        } //: End of ZStack
    }
}

// MARK: - Preview
struct MapAnnotationView_Previews: PreviewProvider {
    
    static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location: locations[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
