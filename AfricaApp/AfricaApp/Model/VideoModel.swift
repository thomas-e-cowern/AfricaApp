//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/6/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // MARK: Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
