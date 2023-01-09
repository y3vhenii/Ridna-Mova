//
//  CurrentStageAnswer.swift
//  Ridna Mova
//  Text: Displays current word to match the picture to
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct CurrentStageAnswer: View {
    @ObservedObject var game: GameViewModel
    
    var body: some View {
        Text(NSLocalizedString(game.getCorrectAnswer(currStage: game.getCurrentStageImages()), comment: ""))
            .fontWeight(.bold)
            .font(.system(size: 45))
            .foregroundColor(Color.black)
    }
}
