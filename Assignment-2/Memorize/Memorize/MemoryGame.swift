//
//  MemoryGame.swift
//  Memorize
//
//  Created by Melisa Yılmaz on 7.07.2022.
//

import Foundation

//Model
struct MemoryGame<CardContent> where CardContent: Equatable { // Equatable behavior means that we could do == operands on the generic type object
    
    private(set) var cards: Array<Card>
    private(set) var score: Int
    
    private var indexOfTheOneAndOnlyOneFaceUpCard: Int?
    
    mutating func choose(_ card: Card) {
        // if let chosenIndex = findIndexOfChosenCard(of: card) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id}),
            !cards[chosenIndex].isFaceUp,
            !cards[chosenIndex].isMatched
        {
            // if this optional value is not a nil.
            if let potentialMatchIndex = indexOfTheOneAndOnlyOneFaceUpCard {
                
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                    score += 2
                }
                else {
                    if(cards[chosenIndex].isPrevioslySeen) {
                        score -= 1;
                    }
                }
                indexOfTheOneAndOnlyOneFaceUpCard = nil
            }
            else {
                for index in cards.indices { // cards.indices same 0..<cards.count
                    cards[index].isFaceUp = false
                }
                indexOfTheOneAndOnlyOneFaceUpCard = chosenIndex
            }
            cards[chosenIndex].isFaceUp.toggle()
            cards[chosenIndex].isPrevioslySeen = true
        }
        
    }
    
    func findIndexOfChosenCard(of card: Card) -> Int? {
        for index in 0..<cards.count {
            if(cards[index].id == card.id) {
                return index
            }
        }
        return nil
    }
    
    func cardIsAlreadyExist (card: Card) -> Bool {
        for index in 0..<cards.count {
            if(cards[index].content == card.content) {
                return true
            }
        }
        return false
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        score = 0
        //add numberOfPairsOfCards x 2 to cards array
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex);
            let isExist: Bool = cardIsAlreadyExist(card: Card(content: content, id: pairIndex*2))
            if(!isExist) {
                cards.append(Card(content: content, id: pairIndex*2))
                cards.append(Card(content: content,id: pairIndex*2+1))
            }
   
        }
        cards = cards.shuffled()
    }
    
    struct Card: Identifiable { // with the Identifiable, it means that our card behave like an Identifiable.
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var isPrevioslySeen: Bool = false
        var content: CardContent
    
        var id: Int// to make cards identifiable
    }
}
