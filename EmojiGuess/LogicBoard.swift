//
//  LogicBoard.swift
//  EmojiGuess
//
//  Created by DDDD on 19/05/2021.
//

import Foundation

struct LogicBoard<CardContent> {
    var cards: Array<Card>
    
    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        
        //implementing game logic - flipping the card over
        let chosenIndex: Int = index(of: card)
        cards[chosenIndex].isFaceUp = !cards[chosenIndex].isFaceUp
    }
    
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0 //TODO: fix here, not correct
        
    }
    
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>() //empty array of cards
        for pairIndex in 0..<numberOfPairOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex * 2))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex * 2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        var id: Int
        
    }
}
