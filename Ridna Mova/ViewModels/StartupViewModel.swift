//
//  StartupViewModel.swift
//  Ridna Mova
//  ViewModel: Gateway to StartupViewLogic
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation

class StartupViewModel: ObservableObject{
    @Published private var startUpView: StartupViewLogic = gameJustTurnedOn()
    
    static func gameJustTurnedOn() -> StartupViewLogic{
        return StartupViewLogic(isStartUpOn: true)
    }
    
    func toggleStartUpView(){
        startUpView.toggleView()
    }
    
    func isStartUpViewOn() -> Bool{
        startUpView.startUpOn()
    }
}
