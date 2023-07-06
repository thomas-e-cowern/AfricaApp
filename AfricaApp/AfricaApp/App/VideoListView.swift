//
//  VideoListView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 4/5/23.
//

import SwiftUI

struct VideoListView: View {
    
    // MARK: - Properties
    var videos: [Video] = Bundle.main.decode("videos.json")
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }  //: End of ForEach
            } // MARK: End of list
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
        } // MARK: End of Navigation
    }
}

// MARK: - Preview
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
