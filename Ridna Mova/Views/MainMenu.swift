//
//  MainMenu.swift
//  Ridna Mova
//  View: Main menu
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI

struct MainMenu: View {
    @ObservedObject var viewModel: GameViewModel
    @ObservedObject var howToPlay: HowToPlayViewModel
    @ObservedObject var mainMenuView: MainMenuViewModel
    @State private var category = ""
    
    var body: some View {
        if howToPlay.howToPlayViewOn(){
            HowToPlay(howToPlay: howToPlay)
        }
        else{
            ZStack{
                Color.yellow.ignoresSafeArea()
                VStack {
                    Image(systemName: "house")
                        .font(.largeTitle)
                        .padding(.top)
                    Text("Main menu")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom)
                    Text("Game category:")
                        .font(.title)
                    Picker(selection: $category, label: Text("Selected category")) {
                        ForEach(viewModel.allAvailCategories(), id: \.self) {
                            Text($0).foregroundColor(Color.black)
                        }
                    }.pickerStyle(.wheel)
                    
                    if (viewModel.getCurrentGameStage() > 0 && !viewModel.isGameOver()){
                        Button("Continue"){
                            mainMenuView.toggleMainMenuView()
                        }.buttonStyle(BlackButton())
                    }
                    
                    Button("New Game"){
                        mainMenuView.toggleMainMenuView()
                        viewModel.newGame(category: category.lowercased())
                    }.buttonStyle(BlackButton())
                    
                    Button("How to play"){
                        howToPlay.toggleHowToPlayView()
                    }.buttonStyle(BlackButton())
                    
                    Button("About the App"){
                        
                    }.buttonStyle(BlackButton())
                    
                    Spacer()
                }
                .foregroundColor(Color.black)
            }
        }
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu(viewModel: GameViewModel(category: "animals"), howToPlay: HowToPlayViewModel(), mainMenuView: MainMenuViewModel())
    }
}

