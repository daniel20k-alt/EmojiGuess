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
                CardView()
  
            }
        }
        .padding()
        .foregroundColor(Color.yellow)
        .font(Font.largeTitle)
    }
}


struct CardView: View {
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 11.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 11.0).stroke(lineWidth: 4)
            Text("🚙")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
