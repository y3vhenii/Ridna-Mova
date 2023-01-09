//
//  StartupView.swift
//  Ridna Mova
//  View: Displayed when the app is turned on.
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct StartupView: View {
    @State private var size = 0.8
    @State private var opacity = 0.5
    @ObservedObject var startUp: StartupViewModel
    
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            VStack{
                Image(systemName: "globe.europe.africa.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                    .shadow(radius: 0.9)
                Text("Ridna Mova")
                    .foregroundColor(.black)
                    .bold()
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .shadow(radius: 0.9)
                Text("Learn Ukrainian the easy way").foregroundColor(Color.black)
                    
                Spacer()
                VStack{
                    HStack{
                        Image(systemName: "brain.head.profile")
                        Text("Learn")
                    }.padding()
                    
                    HStack{
                        Image(systemName: "gamecontroller.fill")
                        Text("Play")
                    }.padding()
                    
                    HStack{
                        Image(systemName: "figure.stairs")
                        Text("Grow")
                    }.padding()
                }
                .font(.largeTitle)
                .foregroundColor(Color.black)
                Spacer()
                Text("Designed and developed by Yevhenii Ganusich").foregroundColor(.black)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 2.0)){
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                startUp.toggleStartUpView()
            }
        }
    }
}

