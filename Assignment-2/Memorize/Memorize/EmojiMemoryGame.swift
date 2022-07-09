//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Melisa Yılmaz on 7.07.2022.
//

import SwiftUI


//ViewModel
class EmojiMemoryGame: ObservableObject { // publish to all the changes to the Views
    
    
    @Published private var model: MemoryGame<String>
    
    private(set) var theme: Theme?
 
    
    static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        var representedCards: Int = 0
        var emojis: Array<String> = theme.emojis.shuffled()
        
        if let numberOfPairsOfCardsOnTheme = theme.numberOfPairs {
            if numberOfPairsOfCardsOnTheme < theme.emojis.count {
                representedCards = numberOfPairsOfCardsOnTheme
            }
            else {
                representedCards = emojis.count
            }
        }
        else {
            representedCards = emojis.count
        }
        
        
        return MemoryGame<String>(numberOfPairsOfCards: representedCards)
        { pairIndex in
            emojis[pairIndex]}
       
    }
    

    
    init (){
        if let newTheme = theme {
            self.theme =  newTheme
        }
        else {
            self.theme = themes.randomElement()!
        }
    
        model = EmojiMemoryGame.createMemoryGame(theme: self.theme!)
    }
    // ViewModel can detect changes in the struct but not in classes
    
    //making this private means that only the ViewModel's code itself can see Model.
    // that protects the Model against any View reaching in and trying to change it.
    
    // private(set) var model means that other structs and classes can look at the model but not change it.
    
    var cards: Array<MemoryGame<String>.Card> {
         model.cards;
    }
    
    var score: Int {
         model.score;
    }
    
    
    //MARK: -Intent(s)
    func choose (_ card: MemoryGame<String>.Card) {
        objectWillChange.send() // after making ViewModel as ObservableObject, do it
        model.choose(card);
    }
    
    func createNewGame () {
        objectWillChange.send() // after making ViewModel as ObservableObject, do it
        self.theme = themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(theme: self.theme!)
    }
}
