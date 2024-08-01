//
//  HomeView.swift
//  Atmosphere
//
//  Created by Rahul Gangwar on 1.08.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                header()
                ScrollView {
                    VStack{
                        
                    }
                } 
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(Color.white.opacity(0.2))
        .overlay(
            LottieView(animeName: "flyingBirds")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        )
    }
    
}

struct header: View {
    var body: some View {
        ZStack {
            HStack(alignment: .center){
                SquareButton(imageName: "plus")
                    .padding(.leading, 10)
                    .touchable(scale: 0.2){
                        print("plus tapped")
                    }
                Spacer()
                Text("City")
                Spacer()
                SquareButton(imageName: "threeDots")
                    .padding(.trailing, 10)
                    .touchable(scale: 1.0){
                        print("threeDots tapped")
                    }
            }
            .padding(.top, 64)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 55)
    }
}


//#Preview {
//    HomeView()
//}
