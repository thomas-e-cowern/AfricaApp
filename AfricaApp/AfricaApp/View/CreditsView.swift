//
//  CreditsView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/11/23.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128)
            
            Text("""
            Copyright @ Thomas Cowern
            All rights reserved
            📱 Mobile Software Services
            """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//: End of VStack
        .padding()
        .opacity(0.4)
    }
}

// MARK: - Preview
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
