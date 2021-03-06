//
//  Theme.swift
//  Memorize
//
//  Created by Melisa YÄ±lmaz on 9.07.2022.
//

import Foundation

struct Theme {
    var name: String
    var emojis: Array<String>
    var numberOfPairs: Int?
    var colorOfTheme: String
    
}

var themes: [Theme] = [
    Theme(
        name:"Foods",
        emojis: ["ð¥¦","ð¥","ð«","ð "],
        numberOfPairs: 47,
        colorOfTheme: "orange"
        
    ),
    Theme(
        name:"Animals",
        emojis: ["ð¶","ð¦","ð¦","ð£","ð ","ð¦­"],
        numberOfPairs: 8,
        colorOfTheme: "cyan"
        
    ),
    Theme(
        name:"Flags",
        emojis: ["ð§ð§","ð§ð¾","ð¦ð¿","ð¨ð¨","ð©ð°","ð¬ð«","ð§ð®","ð¨ð©","ð¨ð®","ð¨ð²","ð¸ð¿"],
        colorOfTheme: "green"
        
    ),
    Theme(
        name:"Drinks",
        emojis: ["ð¥","ð§","ðº","ð·","ðµ","ð¹","ð¸","ð§","âï¸","ð§","ð¥¤","ð¥","ð¶"],
        colorOfTheme: "brown"
        
    ),
    Theme(
        name:"Activities",
        emojis: ["â·","ðð¼ââï¸","â¹ð»ââï¸","ð¤¸ð¾ââï¸","ð¤¼ââï¸","ðð¿","ðð»ââï¸","ð§ð½ââï¸","ð´ð¼ââï¸","ðµð¼","ð¤º","ð£ð½ââï¸","ð§ð¼","ðð¼","ð¤½ð»ââï¸","ð¤¾ð¼ââï¸"],
        colorOfTheme: "teal"
        
    ),
    Theme(
        name:"Jobs",
        emojis: ["ð®ð»ââï¸","ð©ð¼âð³","ð©ð½âð­","ð©ð¿âð»","ð¨ð¼âð¨","ð©ð½âð","ð¥·ð¼","ð¨ð»âð","ð¨ð¿âð¬","ð©ð»âð¾","ð·ð¼ââï¸","ð©ð¾âð«","ð§ð½ââï¸","ð§ð»âð­","ð©ð¼âð¬"],
        numberOfPairs: 8,
        colorOfTheme: "yellow"
        
    ),
]
