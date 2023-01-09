//
//  PlaySoundButton.swift
//  Ridna Mova
//  Button view: Used to trigger voice in SpeechSynthesizer
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI
import Speech

struct PlaySoundButton: View {
    @ObservedObject var game: GameViewModel
    var speech: Speech = Speech()
    
    var body: some View {
        Button(action:{ speech.saySomething(whattToSay: NSLocalizedString(game.getCorrectAnswer(currStage: game.getCurrentStageImages()), comment:""))}){
            Image(systemName: "play.circle")
                .font(Font.system(.largeTitle))
                .foregroundColor(Color.black)
                .padding(.bottom)
        }
    }
}
