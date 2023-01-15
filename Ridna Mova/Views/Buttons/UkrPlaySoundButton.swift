//
//  PlaySoundButton.swift
//  Ridna Mova
//  Button view: Used to trigger voice in SpeechSynthesizer
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI
import Foundation

struct UkrPlaySoundButton: View {
    @ObservedObject var game: GameViewModel
    // NSLocalizedString(game.getCorrectAnswer(currStage: game.getCurrentStageImages()), comment:"")
    var body: some View {
        Button(action:{ SpeechService.shared.speak(text: NSLocalizedString(game.getCorrectAnswer(currStage: game.getCurrentStageImages()), comment:""), voiceType: VoiceType.standardFemaleUkr, language:LanguageCode.ukrUkrainian, completion: voicePlayFinished)}){
            Text("🔊🇺🇦")
                .font(Font.system(.title))
                .padding(.leading)
                .padding(.trailing)
        }
        .background(Color.gray.opacity(0.6))
        .clipShape(Capsule())
    }
    
    func voicePlayFinished() -> Void {
        print("Ukrainian word played.")
    }
}
