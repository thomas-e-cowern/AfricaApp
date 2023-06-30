//
//  CodbleBundle+Extension.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 6/30/23.
//

import Foundation

extension Bundle {
    
    func decode(_ file: String) -> [CoverImage] {
        
        // Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // create decoder
        let decoder = JSONDecoder()
        
        // create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // return the data
        return loaded
    }
}
