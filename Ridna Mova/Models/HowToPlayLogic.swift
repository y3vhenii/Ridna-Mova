//
//  HowToPlayLogic.swift
//  Ridna Mova
//  Model: Controls "How to play" view
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation

struct HowToPlayLogic{
    var howToPlayViewOn: Bool
    
    mutating func toggleHowToPlayView(){
        return howToPlayViewOn.toggle()
    }
    
    func howToPlayViewActive() -> Bool{
        return howToPlayViewOn
    }
}
