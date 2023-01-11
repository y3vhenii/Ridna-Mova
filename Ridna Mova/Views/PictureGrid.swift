//
//  PictureGrid.swift
//  Ridna Mova
//  View: Picture grid
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct PictureGrid: View {
    @ObservedObject var game: GameViewModel
    private let widthDownScale: CGFloat = 2.0
    private let heightDownScale: CGFloat = 2.0
    private let vGridSpacing: CGFloat = 4
    
    var body: some View {
        GeometryReader{ geo in
            LazyVGrid(columns:[ GridItem(.flexible()), GridItem(.flexible()) ], spacing: vGridSpacing){
                ForEach(0..<4){ i in
                    Image(game.getCurrentStageImages()[i])
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width/widthDownScale, height: geo.size.width/heightDownScale)
                        .onTapGesture(){
                            if game.isUIActive() && game.imageSelectedCorrectly(imageSet: game.getCurrentStageImages(), imageSelected: game.getCurrentStageImages()[i]){
                                game.uiActionToggle()   // Turn off UI responsiveness
                                game.toggleCorrectState()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    game.toggleCorrectState()
                                    game.increaseScore()
                                    game.nextLevel()
                                    game.uiActionToggle()   // Turn on UI
                                }
                            }
                            else {
                                if game.isUIActive(){
                                    game.uiActionToggle()   // Turn off UI responsiveness
                                    game.toggleIncorrectState()
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        game.toggleIncorrectState()
                                        game.nextLevel()
                                        game.uiActionToggle()   // Turn on UI responsiveness
                                    }
                                }
                            }
                        }
                }
            }
        }
    }
}

