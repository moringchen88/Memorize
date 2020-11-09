//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by caichen on 2020/10/22.
//  Copyright © 2020 caichen. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame : ObservableObject {
    @Published private var model : MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis : Array<String> = ["😱","🎃","🕷"]
        return MemoryGame<String>(numberOfParisOfCards:emojis.count){pairIndex in
            return emojis[pairIndex]
            
        }
    }
    
    //MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card>
    {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card)
    {
        model.choose(card: card)
    }
}
