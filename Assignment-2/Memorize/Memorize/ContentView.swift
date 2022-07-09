//
//  ContentView.swift
//  Memorize
//
//  Created by Melisa Yılmaz on 5.07.2022.
//

import SwiftUI

//View
struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame // when this viewModel changes, rebuild the entire body
    
    
    //Identifiable means that it has to have a var called id which uniquely identifies it.

    var body: some View {
        // var body means that give the UI that shows us what is in the model
        // ContentView must see what is in the model and so it could give UI that draws the Model.
            
        VStack {
            HStack {
                Text(viewModel.themeName).bold()
                Spacer()
                VStack {
                    Text("Score").bold()
                    Text("\(viewModel.score)").bold()
                }
            }
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) { //specifies the # of columns, and rows
                    
                    // Anytime we use ForEach over an Array, it needs to be Identifiable.
                    
                    ForEach(viewModel.cards, content: { card in
                        CardView(card: card)
                            .aspectRatio(2/3,contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    })
                }
                .foregroundColor(viewModel.themeColor)
            }
           
                Button{
                    viewModel.createNewGame()
                    
                } label: {
                    Text("New Game").bold()
                }.foregroundColor(viewModel.themeColor)
            

        }.padding(.horizontal)
           
            
    }
    

   
    
}

struct CardView: View {
    let card: MemoryGame<String>.Card

    //With @State, our View still is immutable but it turns isFaceUp variable instead of being Boolean to Pointer so the pointer is not changing, variable that it pointed changes.
    
    //Views are immutable, cannot be modified
    var body: some View {
            ZStack { //for creating overlapping content
                let shape = RoundedRectangle(cornerRadius:20.0)
                
                if card.isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3.0)
                     
                    Text(card.content).font(.largeTitle)
                    
                }
                else if card.isMatched {
                    shape.opacity(0)
                }
                else {
                    shape.fill()
                }
            }
        
    }
}



struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
        
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
    }
}
