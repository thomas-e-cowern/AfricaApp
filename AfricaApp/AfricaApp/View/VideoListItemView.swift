//
//  VideoListItem.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/6/23.
//

import SwiftUI

struct VideoListItemView: View {
    
    // MARK: - Properties
    let video: Video
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } //: End of ZStack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } //: End of VStack
        } //: End of HStack
    }
}

// MARK: - Preview
struct VideoListItem_Previews: PreviewProvider {
    static var previews: some View {
        
        let videos: [Video] = Bundle.main.decode("videos.json")
        
        VideoListItemView(video: videos[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
