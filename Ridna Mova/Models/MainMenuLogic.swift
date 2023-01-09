//
//  MainMenuLogic.swift
//  Ridna Mova
//  Model: Logic behind the Main Menu
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation

struct MainMenuLogic{
    var mainMenuOn: Bool
    
    mutating func toggleMainMenu(){
        return mainMenuOn.toggle()
    }
    
    func mainMenuActive() -> Bool{
        return mainMenuOn
    }
}
