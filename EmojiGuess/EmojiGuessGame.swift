//
//  EmojiGuessGame.swift
//  EmojiGuess
//
//  Created by DDDD on 20/05/2021.
//

//ViewModel
import SwiftUI

class EmojiGuessGame: ObservableObject {
    
    @Published private var game: LogicBoard<String> = EmojiGuessGame.createGame()
    
   static func createGame() -> LogicBoard<String> {
        let emojis = ["🐩", "🥤", "🚙"]
    return LogicBoard<String>(numberOfPairOfCards: emojis.count) { pairIndex in
           return emojis[pairIndex]
        }
    }
  
    //MARK: - Access to the model
    
    var cards: Array<LogicBoard<String>.Card> {
        game.cards
    }
    
    //MARK: - Intents
    
    func choose(card: LogicBoard<String>.Card) {
        game.choose(card: card)
        
    }
}
