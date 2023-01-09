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
            Button(action: { game.toggleRulesPopUp() }) {
                VStack{
                    Text("Game rules")
                    Image(systemName: "gamecontroller.fill")
                }.padding()
            }.frame(maxWidth: .infinity)
            
            // Game restart button
            Button(action: { game.newGame(category: game.getCurrCategory()) }) {
                VStack{
                    Text("Restart Game")
                    Image(systemName: "repeat.circle.fill")
                }.padding()
            }.frame(maxWidth: .infinity)
            
            // Main menu button
            Button(action: { mainMenu.toggleMainMenuView() }){
                VStack{
                    Text("Main menu")
                    Image(systemName: "house.fill")
                }.padding()
            }.frame(maxWidth: .infinity)
            
            // Scores of the game
            VStack{
                Text("Scores")
                Text(String(game.getScores()) + "/10")
                Image(systemName: "plusminus.circle.fill")
            }
            .padding()
            .frame(maxWidth:.infinity)
        }
        .foregroundColor(Color.black)
        .background(Color.blue)
    }
}

