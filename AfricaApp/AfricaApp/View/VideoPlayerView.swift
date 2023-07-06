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
    var videoSelected: String
    var videoTitle :String
    
    // MARK: - Body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(filename: videoSelected, fileFormat: "mp4")) {
//                Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        } //: End of VStack
        .tint(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Preview
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
