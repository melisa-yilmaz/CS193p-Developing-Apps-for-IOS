//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Melisa Yılmaz on 5.07.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    // let game means that I am not going to change this pointer, I change the what it points to
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
