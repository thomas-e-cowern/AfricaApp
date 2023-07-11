//
//  MotionAnimationView.swift
//  AfricaApp
//
//  Created by Thomas Cowern on 7/11/23.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - Properties
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    // random coordinate
    func randomCoordinate(max: CGFloat)  -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    // random size
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 10...300)
    }
    
    // random scale
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // random speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    
    // random delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(Color.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(randomScale())
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .animation(Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5).repeatForever().speed(randomSpeed()).delay(randomDelay()), value: isAnimating)
                        .onAppear {
                            isAnimating = true
                        }
                }  //: End of ForEach
            } //: End of ZStack
            .drawingGroup()
        } //: end of geometry reader
    }
}

// MARK: - Preview
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
