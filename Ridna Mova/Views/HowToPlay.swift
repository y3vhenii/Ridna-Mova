//
//  HowToPlay.swift
//  Ridna Mova
//  View: Describes game and it's rules
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI

struct HowToPlay: View {
    @ObservedObject var howToPlay: HowToPlayViewModel
    
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            VStack{
                Text("How to play?")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                List{
                    Section{
                        Text("1. Before you start").bold().font(.title3)
                        Text("In the main menu, select the category that you would like to associate your game 🎮 with. Currently there are 3 categories that you can pick to play 🎲 the game.")
                    }
                    .listRowBackground(Color.black)
                    .foregroundColor(.white)
                    .listRowSeparatorTint(.white)
                    Section{
                        Text("2. When the game starts").bold().font(.title3)
                        Text("After you select your category and click (New Game), you will see the first stage of the game appear on the screen 📲. You will see a word in Ukrainian 🇺🇦 at the top of the screen as well as 4 images 📸 right below it. Your job is to match ✅ the word to the right image 🌆. Simply tap on the image to see whether you got it right or not ✅❌. You will gain 1 point ➕ for correct answer and you will not gain any points if you answer incorrectly 😢.")
                    }
                    .listRowBackground(Color.black)
                    .foregroundColor(.white)
                    .listRowSeparatorTint(.white)
                    Section{
                        Text("3. During the game").bold().font(.title3)
                        Text("There are 10 rounds in total throughout the game. If you look right below the word👇🏼, you will see a small play button ▶️. This button will pronounce the word displayed on the screen in Ukrainian 🗣️. Make sure that your device is not on mute 🔇 when you tap the button, otherwise, you will not hear it 👂🏼. There is also a small display of the current round of the game at the bottom of the game screen 📲👇🏼.")
                    }.listRowBackground(Color.black).foregroundColor(.white).listRowSeparatorTint(.white)
                    Section{
                        Text("4. Menu at the top of the screen").bold().font(.title3)
                        Text("There is a menu located right at the top 🔝 of the screen. The menu allows you to see the rules of the game 👁️, restart the game using the same category ⏮️ and go back to the main menu. If you decide to go to the main menu but you made some progress 📈 in the game, you will be able to go back to the game by pressing (Continue) button.")
                    }.listRowBackground(Color.black).foregroundColor(.white).listRowSeparatorTint(.white)
                }
                .listStyle(.insetGrouped)
                .scrollContentBackground(.hidden)
                
                Button("Back to main menu"){
                    howToPlay.toggleHowToPlayView()
                }.buttonStyle(BlackButton())
            }
        }
    }
}

struct HowToPlay_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlay(howToPlay: HowToPlayViewModel())
    }
}
