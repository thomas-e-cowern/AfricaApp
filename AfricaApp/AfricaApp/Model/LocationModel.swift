//
//  LocationModel.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/10/23.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Location computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

