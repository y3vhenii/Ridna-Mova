//
//  GameLogic.swift
//  Ridna Mova
//  Model: Game logic is handled here
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation

struct GameLogic{
    
    var stagesOfTheGame: [[String]]
    var currStage: Int = 0
    var scores: Int
    var isRulesPopUpOn: Bool
    var correctAnswerState: Bool
    var incorrectAnswerState: Bool
    var nextStage: Int
    var totalHints: Int = 0
    let maxTotalHints: Int = 3
    let maxStage: Int = 9
    var gameDidStart: Bool = false
    var category: String
    var allUIActionsEnabled: Bool = true
    var availableCategories: [String] = ["Animals", "Food"]
    
    func getCurrStageImages() -> [String]{
        return stagesOfTheGame[currStage]
    }
    
    mutating func goToNextStage(){
        if currStage < maxStage{
            currStage += 1
        }
        nextStage += 1
    }
    
    mutating func increaseScore(){
        scores += 1
    }
    
    func getScores() -> Int{
        return scores
    }
    
    func getCurrentStage() -> Int{
        return currStage
    }
    
    func getNextStage() -> Int{
        return nextStage
    }
    
    func getCurrStageAnswer(stage: [String]) -> String{
        return stage[stage.count - 1]
    }
    
    func isRulesPopUpPresent() -> Bool{
        return isRulesPopUpOn
    }
    
    mutating func toggleRulesPopUp() {
        isRulesPopUpOn.toggle()
    }
    
    mutating func toggleCorrectState(){
        correctAnswerState.toggle()
    }
    
    mutating func toggleIncorrectState(){
        incorrectAnswerState.toggle()
    }
    
    func getCurrentCorrectState() -> Bool{
        return correctAnswerState
    }
    
    func getCurrentIncorrectState() -> Bool{
        return incorrectAnswerState
    }
    
    func getCurrentCategory() -> String{
        return category
    }
    
    func getAvailableCategories() -> [String]{
        return availableCategories
    }
    
    func uiActionsEnabled() -> Bool{
        return allUIActionsEnabled
    }
    
    mutating func toggleUIActions(){
        allUIActionsEnabled.toggle()
    }
    
    func hintsUsed() -> Int{
        return totalHints
    }
    
    mutating func incrementHintsUsed(){
        totalHints += 1
    }
}
