//
//  PlaySoundButton.swift
//  Ridna Mova
//  Button view: Used to trigger voice in SpeechSynthesizer
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI
import Speech

struct UkrPlaySoundButton: View {
    @ObservedObject var game: GameViewModel
    var speech: UkrSpeech = UkrSpeech()
    
    var body: some View {
        Button(action:{ speech.saySomething(whattToSay: NSLocalizedString(game.getCorrectAnswer(currStage: game.getCurrentStageImages()), comment:""))}){
            Text("🔊🇺🇦")
                .font(Font.system(.title))
                .padding(.leading)
                .padding(.trailing)
        }
        .background(Color.gray.opacity(0.6))
        .clipShape(Capsule())
    }
}
