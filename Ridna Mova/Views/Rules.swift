//
//  Rules.swift
//  Ridna Mova
//  View: Rules of the game
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct Rules: View {
    let fontSize : CGFloat = 45
    let ruleSpacing : CGFloat = 10
    let backgroundOpacity : Double = 0.8
    let preferredFrameHeight : CGFloat = 300
    
    var body: some View {
        VStack{
            Text("Game rules")
                .font(.system(size: fontSize))
                .bold()
                .multilineTextAlignment(.center)
            Image(systemName: "list.dash")
                .font(.system(size: fontSize))
            VStack(alignment: .leading, spacing: ruleSpacing){
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Once you start the game, 4 images will appear on the screen along with the word on top of them.")
                }
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Your job is to match the word with the right image. You can also make the word audible by tapping on the play button.")
                }
                HStack{
                    Image(systemName: "circle.fill")
                    Text("If you select the right image, you will see a pop up message with the green checkmark and 1 point will be added to your scores.")
                }
                HStack{
                    Image(systemName: "circle.fill")
                    Text("If you select the wrong image, you will see a pop up message with red X mark and your scores will not change.")
                }
            }.padding()
        }
        .gameRules(preferredFrameHeight: preferredFrameHeight, backgroundOpacity: backgroundOpacity)
    }
}

