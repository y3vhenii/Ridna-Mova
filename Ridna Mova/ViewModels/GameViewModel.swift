//
//  GameViewModel.swift
//  Ridna Mova
//  ViewModel: Gateway to GameLogic
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import AVFoundation

class GameViewModel: ObservableObject{
    
    @Published private var model: GameLogic
    private var category: String
    
    init(category: String) {
        self.category = category
        self.model = GameViewModel.createGame(category: category)
    }
    
    // Generate 10 rounds of game with 4 pictures each
    static func createGame(category: String) -> GameLogic{
        var gameStages = [[String]]()
        guard let file = Bundle.main.url(forResource: category, withExtension: "txt")
        else {
            fatalError("Couldn't find images file in the bundle.")
        }
        do {
            // Read the file and turn it into array of words
            let contents = try String(contentsOf: file, encoding: String.Encoding.utf8)
            // Trim white spaces and new line characters
            let trimmed = contents.trimmingCharacters(in: .whitespacesAndNewlines)
            // Trim semicolons and create array of items
            let trimmedContents = String(trimmed.filter { !";".contains($0) })
            let words = trimmedContents.components(separatedBy: "\n")
            let shuffledIndices = Array(0...words.count-1).shuffled()
            var currentWordIndex = 0
            for _ in 0...9 {
                // Create subarray containing current cards and append it to "game stages" array
                var currStage = [String]()
                currStage.append(words[shuffledIndices[currentWordIndex]])
                currStage.append(words[shuffledIndices[currentWordIndex+1]])
                currStage.append(words[shuffledIndices[currentWordIndex+2]])
                currStage.append(words[shuffledIndices[currentWordIndex+3]])
                currStage.append(words[shuffledIndices[Int.random(in: currentWordIndex...currentWordIndex+3)]]) // Correct answer
                gameStages.append(currStage)
                currentWordIndex += 4
            }
        } catch {
            print(error.localizedDescription)
        }
        return GameLogic(stagesOfTheGame: gameStages, currStage: 0, scores: 0, isRulesPopUpOn: false, correctAnswerState: false, incorrectAnswerState: false, nextStage: 1, category: category)
    }
    
    func getCorrectAnswer(currStage: [String]) -> String{
        return model.getCurrStageAnswer(stage: currStage)
    }
    
    func nextLevel(){
        model.goToNextStage()
    }
    
    func isGameOver() -> Bool{
        return model.getNextStage() > 10
    }
    
    func isRulesPopUpOn() -> Bool{
        return model.isRulesPopUpPresent()
    }
    
    func toggleRulesPopUp(){
        model.toggleRulesPopUp()
    }
    
    func getScores() -> Int{
        return model.getScores()
    }
    
    func imageSelectedCorrectly(imageSet: [String], imageSelected: String) -> Bool{
        return model.getCurrStageAnswer(stage: imageSet) == imageSelected
    }
    
    func getCurrentStageImages() -> [String]{
        return model.getCurrStageImages()
    }
    
    func newGame(category: String){
        model = GameViewModel.createGame(category: category)
    }
    
    func increaseScore(){
        model.increaseScore()
    }
    
    func getCurrentCorrectState() -> Bool{
        return model.getCurrentCorrectState()
    }
    
    func toggleCorrectState(){
        model.toggleCorrectState()
    }
    
    func getCurrentIncorrectState() -> Bool{
        return model.getCurrentIncorrectState()
    }
    
    func toggleIncorrectState(){
        model.toggleIncorrectState()
    }
    
    func getCurrCategory() -> String{
        return model.getCurrentCategory()
    }
    
    func allAvailCategories() -> [String]{
        return model.getAvailableCategories()
    }
    
    func getCurrentGameStage() -> Int{
        return model.getCurrentStage()
    }
    
    func isUIActive() -> Bool{
        return model.uiActionsEnabled()
    }
    
    func uiActionToggle(){
        model.toggleUIActions()
    }
    
    func totalHintsUsed() -> Int{
        return model.hintsUsed()
    }
    
    func hintUsed(){
        model.incrementHintsUsed()
    }
    
    func maxHintsPossible() -> Int{
        return model.maxTotalHints
    }
}
