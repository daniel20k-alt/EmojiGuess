//
//  ContentView.swift
//  EmojiGuess
//
//  Created by DDDD on 08/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack() {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
        .padding()
        .foregroundColor(Color.yellow)
        .font(Font.largeTitle)
    }
}


struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack() {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 11.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 11.0).stroke(lineWidth: 4)
                Text("🚙")
            } else {
                RoundedRectangle(cornerRadius: 11.0).fill()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
