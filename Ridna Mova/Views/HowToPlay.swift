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
                        Text("In the main menu, select the category that you would like to associate your game ๐ฎ with. Currently there are 3 categories that you can pick to play ๐ฒ the game.")
                    }
                    .listRowBackground(Color.black.opacity(0.8))
                    .foregroundColor(.white)
                    .listRowSeparatorTint(.white)
                    Section{
                        Text("2. When the game starts").bold().font(.title3)
                        Text("After you select your category and click (New Game), you will see the first stage of the game appear on the screen ๐ฒ. You will see a word in Ukrainian ๐บ๐ฆ at the top of the screen as well as 4 images ๐ธ right below it. Your job is to match โ the word to the right image ๐. Simply tap on the image to see whether you got it right or not โโ. You will gain 1 point โ for correct answer and you will not gain any points if you answer incorrectly ๐ข.")
                    }
                    .listRowBackground((Color.black.opacity(0.8)))
                    .foregroundColor(.white)
                    .listRowSeparatorTint(.white)
                    Section{
                        Text("3. During the game").bold().font(.title3)
                        Text("There are 10 rounds in total throughout the game. If you look right below the word๐๐ผ, you will see two buttons, one with Ukrainian flag ๐บ๐ฆ and one with English flag ๐ด๓?ง๓?ข๓?ฅ๓?ฎ๓?ง๓?ฟ. One button will pronounce the word in ๐บ๐ฆ Ukrainian and the other one will translate it and pronounce it in ๐ด๓?ง๓?ข๓?ฅ๓?ฎ๓?ง๓?ฟ English. English button is more of a hint button ๐ซฃ that you can use when you don't know what the word really means๐ค. The Ukrainian button can be used all throughout the game to learn the pronounciation ๐ฃ๏ธ and is a part of learning experience. Make sure that your device ๐ฒ is not on mute ๐ when you tap on these buttons, otherwise, you will not hear it ๐๐ผ. There is also a small display of the current round of the game at the bottom of the game screen ๐ฒ๐๐ผ.")
                    }
                    .listRowBackground((Color.black.opacity(0.8)))
                    .foregroundColor(.white)
                    .listRowSeparatorTint(.white)
                    Section{
                        Text("4. Menu at the top of the screen").bold().font(.title3)
                        Text("There is a menu located right at the top ๐ of the screen. The menu allows you to see the rules of the game ๐๏ธ, restart the game using the same category โฎ๏ธ and go back to the main menu. If you decide to go to the main menu but you made some progress ๐ in the game, you will be able to go back to the game by pressing (Continue) button.")
                    }.listRowBackground((Color.black.opacity(0.8)))
                        .foregroundColor(.white)
                        .listRowSeparatorTint(.white)
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
