//
//  BlackButton.swift
//  Ridna Mova
//  View: Button modifier
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation
import SwiftUI

struct BlackButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.black.opacity(0.8))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
    }
}
