//
//  Ridna_MovaApp.swift
//  Ridna Mova
//
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI

@main
struct Ridna_MovaApp: App {
    var body: some Scene {
        WindowGroup {
            GameView(game: GameViewModel(category: "animals"), startUpView: StartupViewModel(), mainMenuView: MainMenuViewModel(), howToPlayView: HowToPlayViewModel())
        }
    }
}
