//
//  GameView.swift
//  Ridna Mova
//  View: Main view of the game
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var game: GameViewModel
    @ObservedObject var startUpView: StartupViewModel
    @ObservedObject var mainMenuView: MainMenuViewModel
    @ObservedObject var howToPlayView: HowToPlayViewModel
    
    var body: some View {
        if startUpView.isStartUpViewOn() {
            StartupView(startUp: startUpView)
        }
        else if mainMenuView.isMainMenuViewOn() {
            MainMenu(viewModel: game, howToPlay: howToPlayView, mainMenuView: mainMenuView)
        }
        else if game.isGameOver() {
            EndOfGameView(game: game, mainMenu: mainMenuView)
        }
        else {
            ZStack{
                Color.yellow.ignoresSafeArea()
                VStack{
                    TopBar(game: game, mainMenu: mainMenuView)
                    CurrentStageAnswer(game: game)
                    HStack{
                        UkrPlaySoundButton(game: game)
                        if game.totalHintsUsed() < game.maxHintsPossible(){
                            PlayHint(game: game)
                        }
                    }
                    PictureGrid(game: game)
                    CurrRoundView(game: game)
                }
            }
            .popup(isPresented: game.isRulesPopUpOn(), alignment: .center, content: Rules.init)
            .popup(isPresented: game.getCurrentCorrectState(), alignment: .center, content: CorrectAnswer.init)
            .popup(isPresented: game.getCurrentIncorrectState(), alignment: .center, content: IncorrectAnswer.init)
        }
    }
}

 struct GameView_Previews: PreviewProvider {
     static var previews: some View {
         GameView(game: GameViewModel(category: "animals"), startUpView: StartupViewModel(), mainMenuView: MainMenuViewModel(), howToPlayView: HowToPlayViewModel())
     }
 }
