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
    
    @State private var animation: Double = 0.0
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        } //: End of ZStack
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
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
