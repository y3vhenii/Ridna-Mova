//
//  HowToPlayViewModel.swift
//  Ridna Mova
//  ViewModel: Gateway to HowToPlayLogic
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation

class HowToPlayViewModel: ObservableObject{
    @Published private var howToPlayView: HowToPlayLogic = openHowToPlayView()
    
    static func openHowToPlayView() -> HowToPlayLogic{
        return HowToPlayLogic(howToPlayViewOn: false)
    }
    
    func toggleHowToPlayView(){
        howToPlayView.toggleHowToPlayView()
    }
    
    func howToPlayViewOn() -> Bool{
        howToPlayView.howToPlayViewActive()
    }
}
