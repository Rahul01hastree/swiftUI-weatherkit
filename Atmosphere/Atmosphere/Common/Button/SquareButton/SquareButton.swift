//
//  SquareButton.swift
//  Atmosphere
//
//  Created by Rahul Gangwar on 1.08.2024.
//

import SwiftUI

struct SquareButton: View {
    let imageName: String
    var body: some View {
        ZStack {
            Color.clear
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
        }
        .frame(maxWidth: 45)
        .frame(maxHeight: 45)
        .cornerRadius(12)
    }
}

#Preview {
    SquareButton(imageName: "")
}
