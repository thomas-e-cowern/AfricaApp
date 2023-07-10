//
//  MapView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 4/5/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.00286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    // MARK: - Body
    var body: some View {
        Text("Map")
    }
}

// MARK: - Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
