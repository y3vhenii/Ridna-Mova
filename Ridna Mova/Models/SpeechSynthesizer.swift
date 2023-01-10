//
//  SpeechSynthesizer.swift
//  Ridna Mova
//  Used to make string values audible in Ukrainian
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import AVFoundation

struct UkrSpeech {
    let speechSynthesizer = AVSpeechSynthesizer()
    func saySomething(whattToSay: String) -> Void{
        let utterance = AVSpeechUtterance(string: whattToSay)
        utterance.voice = AVSpeechSynthesisVoice(language: "uk-UA")
        speechSynthesizer.speak(utterance)
    }
}

struct EngSpeech {
    let speechSynthesizer = AVSpeechSynthesizer()
    func saySomething(whattToSay: String) -> Void{
        let utterance = AVSpeechUtterance(string: whattToSay)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        speechSynthesizer.speak(utterance)
    }
}
