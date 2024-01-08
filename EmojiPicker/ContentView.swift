//
//  ContentView.swift
//  EmojiPicker
//
//  Created by Gerard Fajardo on 2024-01-08.
//

import SwiftUI

enum Emoji: String {
    case 🤖, 😄, 🚀, 💻
}

struct ContentView: View {
    let emojiSelection: Emoji = .🚀
    
    
    var body: some View {
        Text(emojiSelection.rawValue)
            .font(.system(size: 150))
    }
}

#Preview {
    ContentView()
}
