//
//  CorrectAnswer.swift
//  Ridna Mova
//  View: Correct answer pop up
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct CorrectAnswer: View {
    let backgroundOpacity: Double = 0.8
    let preferredFrameHeight: CGFloat = 300
    
    var body: some View {
        VStack{
            Text("Correct!")
                .foregroundColor(Color.white)
                .font(.largeTitle)
            Image(systemName: "checkmark.circle.fill")
                .foregroundColor(Color.green)
                .font(.largeTitle)
        }
        .answerStatus(preferredFrameHeight: preferredFrameHeight, backgroundOpacity: backgroundOpacity)
    }
}
