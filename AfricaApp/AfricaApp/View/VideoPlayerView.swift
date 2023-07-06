//
//  VideoPlayerView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/6/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
    }
}

// MARK: - Preview
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
