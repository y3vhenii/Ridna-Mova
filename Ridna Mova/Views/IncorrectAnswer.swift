//
//  IncorrectAnswer.swift
//  Ridna Mova
//  View: Incorrect answer pop up
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct IncorrectAnswer: View {
    let backgroundOpacity: Double = 0.8
    let preferredFrameHeight: CGFloat = 300
    
    var body: some View {
        VStack{
            Text("Incorrect!")
                .foregroundColor(Color.white)
                .font(.largeTitle)
            Image(systemName: "x.circle.fill")
                .foregroundColor(Color.red)
                .font(Font.system(.largeTitle))
        }
        .answerStatus(preferredFrameHeight: preferredFrameHeight, backgroundOpacity: backgroundOpacity)
    }
}
