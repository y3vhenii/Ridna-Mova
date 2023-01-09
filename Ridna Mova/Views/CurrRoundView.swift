//
//  CurrentRound.swift
//  Ridna Mova
//
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI

struct CurrRoundView: View {
    @ObservedObject var game: GameViewModel
    var body: some View {
        Text("Round: " + String(game.getCurrentGameStage()+1) + "/10")
            .foregroundColor(.black)
            .font(.title)
            .bold()
    }
}
