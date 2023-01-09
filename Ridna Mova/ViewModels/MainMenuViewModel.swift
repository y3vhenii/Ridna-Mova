//
//  MainMenuViewModel.swift
//  Ridna Mova
//  ViewModel: Gateway to MainMenuLogic
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation

class MainMenuViewModel: ObservableObject{
    @Published private var mainMenuView: MainMenuLogic = gameJustTurnedOn()
    
    static func gameJustTurnedOn() -> MainMenuLogic{
        return MainMenuLogic(mainMenuOn: true)
    }
    
    func toggleMainMenuView(){
        mainMenuView.toggleMainMenu()
    }
    
    func isMainMenuViewOn() -> Bool{
        mainMenuView.mainMenuActive()
    }
}
