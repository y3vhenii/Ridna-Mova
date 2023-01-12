//
//  PlayHint.swift
//  Ridna Mova
//
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI
import Speech

struct PlayHint: View {
    @ObservedObject var game: GameViewModel
    var speech: EngSpeech = EngSpeech()
    
    var body: some View {
        Button(action:{
            speech.saySomething(whattToSay: game.getCorrectAnswer(currStage: game.getCurrentStageImages()))
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                game.hintUsed();
            }
            })
        {
            Text("🔊🏴󠁧󠁢󠁥󠁮󠁧󠁿")
                .font(Font.system(.title))
                .padding(.leading)
                .padding(.trailing)
        }
        .background(Color.gray.opacity(0.6))
        .clipShape(Capsule())
    }
}
