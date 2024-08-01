//
//  TouchableModifier.swift
//  Atmosphere
//
//  Created by Rahul Gangwar on 1.08.2024.
//

import SwiftUI

struct TouchableModifier: ViewModifier {
    let scale: CGFloat
    let action: () -> Void
    
    @State private var isPressed: Bool = false
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(isPressed ? scale : 1.0, anchor: .center)
            .background(Color.clear)
            .onTapGesture {
                action()
                withAnimation(.spring(response: 0.2, dampingFraction: 0.55, blendDuration: 0)) {
                    isPressed = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    withAnimation(.spring(response: 0.2, dampingFraction: 0.55, blendDuration: 0)) {
                        isPressed = false
                    }
                }
            }
    }
}
