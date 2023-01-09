//
//  VStackExtensions.swift
//  Ridna Mova
//  Extensions: VStack extensions
//  Created by Yevhenii Ganusich on 1/9/23.
//

import SwiftUI

extension VStack {
    func endOfGameMessage() -> some View {
        self.multilineTextAlignment(.center)
            .truncationMode(.middle)
            .padding()
            .frame(width:300, height:250, alignment: .center)
            .background(Color.black.opacity(0.3))
            .cornerRadius(10)
    }
    
    func gameRules(preferredFrameHeight: CGFloat, backgroundOpacity: CGFloat) -> some View {
        self.foregroundColor(Color.white)
            .frame(maxWidth: .infinity, idealHeight: preferredFrameHeight)
            .background(Color.black.opacity(backgroundOpacity))
    }
    
    func answerStatus(preferredFrameHeight: CGFloat, backgroundOpacity: CGFloat) -> some View {
        self.padding()
            .frame(maxWidth: .infinity, idealHeight: preferredFrameHeight)
            .background(Color.black.opacity(backgroundOpacity))
    }
}
