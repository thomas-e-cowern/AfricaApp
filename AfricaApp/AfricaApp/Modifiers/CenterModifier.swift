//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/11/23.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
