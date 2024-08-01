//
//  View+Extensions.swift
//  Atmosphere
//
//  Created by Rahul Gangwar on 1.08.2024.
//

import Foundation
import SwiftUI

extension View {
    func touchable(
        scale: CGFloat = 0.97,
        _ action: @escaping () async -> Void = {}
    ) -> some View {
        modifier(TouchableModifier(scale: scale) {
            Task { @MainActor in
                await action()
            }
        })
    }
}

