//
//  ContentView.swift
//  EmojiPicker
//
//  Created by Gerard Fajardo on 2024-01-08.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🤖, 😄, 🚀, 💻
}

struct ContentView: View {
    @State var emojiSelection: Emoji = .🚀
    
    
    var body: some View {
        VStack {
            Text(emojiSelection.rawValue)
                .font(.system(size: 150))
            
            Picker("Select Emoji", selection: $emojiSelection) {
                ForEach(Emoji.allCases, id: \.self) { emoji in
                    Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
