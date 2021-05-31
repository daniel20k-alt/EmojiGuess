//
//  EmojiMemoryGameView.swift
//  EmojiGuess
//
//  Created by DDDD on 08/05/2021.
//

import SwiftUI

struct EmojiGuessGameView: View {
    var viewModel: EmojiGuessGame
    var body: some View {
        HStack() {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture(perform: { viewModel.choose(card: card)})
            }
        }
        .padding()
        .foregroundColor(Color.yellow)
        .font(Font.largeTitle)
    }
}


struct CardView: View {
    var card: LogicBoard<String>.Card
    var body: some View {
        ZStack() {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 11.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 11.0).stroke(lineWidth: 4)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 11.0).fill()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiGuessGameView(viewModel: EmojiGuessGame())
    }
}
