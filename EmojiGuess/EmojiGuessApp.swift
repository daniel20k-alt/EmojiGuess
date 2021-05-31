//
//  EmojiGuessApp.swift
//  EmojiGuess
//
//  Created by DDDD on 08/05/2021.
//

import SwiftUI

@main
struct EmojiGuessApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiGuessGame()
            EmojiGuessGameView(viewModel: game)
        }
    }
}
