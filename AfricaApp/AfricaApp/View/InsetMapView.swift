//
//  InsetMapView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/6/23.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: - Properties
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    // MARK: - Body
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //: End of HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                } // MARK: Navigation
                .padding(12),
                alignment: .topTrailing

            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

// MARK: - Preview
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
