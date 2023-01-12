//
//  TopBar.swift
//  Ridna Mova
//  View: Top bar displaying button to access rules of the game, restart button and total points
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct TopBar: View {
    @ObservedObject var game: GameViewModel
    @ObservedObject var mainMenu: MainMenuViewModel
    var body: some View {
        HStack{
            // Game rules button
            Button(action: {
                if (game.isUIActive()){
                    game.toggleRulesPopUp()
                }
            }) {
                VStack{
                    Text("Game rules")
                    Text("🎮")
                }
            }.frame(maxWidth: .infinity)
            
            // Game restart button
            Button(action: {
                if (game.isUIActive()){
                    game.newGame(category: game.getCurrCategory())
                }
            }) {
                VStack{
                    Text("Restart Game")
                    Text("🔄")
                }
            }.frame(maxWidth: .infinity)
            
            // Main menu button
            Button(action: {
                if (game.isUIActive()){
                    mainMenu.toggleMainMenuView()
                }
            }) {
                VStack{
                    Text("Main menu")
                    Text("🏠")
                }
            }.frame(maxWidth: .infinity)
            
            // Hints used
            VStack{
                Text("Hints")
                Text(String(game.totalHintsUsed()) + "/3")
                Text("💡")
            }
            .frame(maxWidth:.infinity)
            
            // Scores of the game
            VStack{
                Text("Scores")
                Text(String(game.getScores()) + "/10")
                Text("📊")
            }
            .frame(maxWidth:.infinity)
        }
        .padding(.bottom)
        .padding(.top)
        .foregroundColor(Color.black)
        .background(Color.blue)
    }
}

