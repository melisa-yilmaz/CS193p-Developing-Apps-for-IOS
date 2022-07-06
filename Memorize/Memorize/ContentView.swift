//
//  ContentView.swift
//  Memorize
//
//  Created by Melisa Yılmaz on 5.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var emojisVehicle: Array<String> = ["🚗","🚕","🏍","🛺","✈️", "🚁","🛶","🚄","🚂","🦼","🚜","🚡","🚞","🚒","🚚"];
    
    @State var emojisEat: Array<String> = ["🍏","🥦","🥥","🥨","🍕", "🌽","🧆","🫑","🍆","🥓","🥝","🍠","🫒","🥑","🍑"];
    
    @State var emojisAnimal: Array<String> = ["🐝","🐋","🦄","🐒","🪲", "🐹","🐥","🦉","🐸","🦖","🦧","🦒","🦥","🐿","🦚"];
    //Identifiable means that it has to have a var called id which uniquely identifies it.

    
    @State var emojisArray: Array<String> = []
    
    
    var body: some View {
      
        
        VStack {
            
            HStack {
                Text("Memorize!")
            }.font(.largeTitle)
            .foregroundColor(.blue)
     
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) { //specifies the # of columns, and rows
                    ForEach(emojisArray[0..<emojisArray.count], id: \.self, content: {
                        emoji in
                        CardView(content: emoji).aspectRatio(2/3,contentMode: .fit)
                    })
                }
                .foregroundColor(.cyan)
            
            }
            
            
            Spacer()
            HStack {
                vehicle
                Spacer()
                eat
                Spacer()
                animal
            }
            .font(.largeTitle)
            .padding(.horizontal)
           
        }
        
        .padding(.horizontal)
        
            
    }
    
    var vehicle: some View {
        Button(action: {
            emojisVehicle.shuffle();
            emojisArray = emojisVehicle;
            
        }, label: {
            VStack {
                Image(systemName: "car")
                Text("Vehicles").font(.footnote)
          
            }
        
        })
    }
    
    var eat: some View {
        Button(action: {
            emojisEat.shuffle();
            emojisArray = emojisEat;
            
            
        }, label: {
            VStack {
                Image(systemName: "fork.knife")
                Text("Foods").font(.footnote)
            }
        
            
        })
    }
    var animal: some View {
        Button(action: {
            emojisAnimal.shuffle();
            emojisArray = emojisAnimal;
            
        }, label: {
            VStack {
                Image(systemName: "pawprint")
                Text("Animals").font(.footnote)
            }
            
            
        })
    }
    
}

struct CardView: View {
    var content: String
    @State var isFaceUp : Bool = true
    //With @State, our View still is immutable but it turns isFaceUp variable instead of being Boolean to Pointer so the pointer is not changing, variable that it pointed changes.
    
    //Views are immutable, cannot be modified
    var body: some View {
            ZStack { //for creating overlapping content
                let shape = RoundedRectangle(cornerRadius:20.0)
                
                if isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3.0)
                     
                    Text(content).font(.largeTitle)
                    
                }
                else {
                    shape.fill().foregroundColor(.cyan)
                }
            }.onTapGesture { //takes perform
                isFaceUp = !isFaceUp
            }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        
        ContentView()
            .preferredColorScheme(.light)
    }
}
