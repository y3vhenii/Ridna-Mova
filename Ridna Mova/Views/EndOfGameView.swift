//
//  EndOfGameView.swift
//  Ridna Mova
//  View: Displayed when the player completes all stages of the game
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct EndOfGameView: View{
    @ObservedObject var game: GameViewModel
    @ObservedObject var mainMenu: MainMenuViewModel
    @State private var size = 0.9
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            VStack{
                Text("Game Over")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                Image(systemName: "flag.checkered.2.crossed")
                    .font(.largeTitle)
                    .padding(.bottom)
                Text("Your points are:")
                Text(String(game.getScores()) + "/10").font(.callout)
                
                if (game.getScores() >= 8){
                    VStack{
                        Text("Message:").bold()
                        Text("Well done! You're doing great. If you feel like you know this category well, try other categories that you can select in the main menu. Once again, good job!")
                    }.endOfGameMessage()
                }
                else if (game.getScores() < 8 && game.getScores() >= 5){
                    VStack{
                        Text("Message:").bold()
                        Text("You're doing great, but you still need to practice a little more. Continue practicing in this category by pressing restart button. When you get confident enough, try yourself in other categories as well.")
                    }.endOfGameMessage()
                }
                else{
                    VStack{
                        Text("Message:").bold()
                        Text("You still have a lot of room for improvement. Keep playing in this cateogory to improve your knowledge in this topic. Once you get more confident and your scores improve, try yourself in other categories as well.")
                    }.endOfGameMessage()
                }
                    
                Button("Restart the game"){
                    game.newGame(category: game.getCurrCategory())
                }.buttonStyle(BlackButton())
                        
                Button("Main menu"){
                    mainMenu.toggleMainMenuView()
                }.buttonStyle(BlackButton())
            }
            .foregroundColor(.black)
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 2.0)){
                    self.size = 1.2
                    self.opacity = 1.0
                }
            }
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        EndOfGameView(game: GameViewModel(category: "animals"), mainMenu: MainMenuViewModel())
    }
}
