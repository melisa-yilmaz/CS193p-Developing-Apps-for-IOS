//
//  Theme.swift
//  Memorize
//
//  Created by Melisa Yılmaz on 9.07.2022.
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
        emojis: ["🥦","🥑","🫐","🍠"],
        numberOfPairs: 47,
        colorOfTheme: "orange"
        
    ),
    Theme(
        name:"Animals",
        emojis: ["🐶","🦋","🦅","🐣","🐠","🦭"],
        numberOfPairs: 8,
        colorOfTheme: "cyan"
        
    ),
    Theme(
        name:"Flags",
        emojis: ["🇧🇧","🇧🇾","🇦🇿","🇨🇨","🇩🇰","🇬🇫","🇧🇮","🇨🇩","🇨🇮","🇨🇲","🇸🇿"],
        colorOfTheme: "green"
        
    ),
    Theme(
        name:"Drinks",
        emojis: ["🥛","🧉","🍺","🍷","🍵","🍹","🍸","🧋","☕️","🧃","🥤","🥂","🍶"],
        colorOfTheme: "brown"
        
    ),
    Theme(
        name:"Activities",
        emojis: ["⛷","🏋🏼‍♀️","⛹🏻‍♀️","🤸🏾‍♀️","🤼‍♀️","🏄🏿","🏊🏻‍♀️","🧗🏽‍♀️","🚴🏼‍♂️","🚵🏼","🤺","🚣🏽‍♀️","🧘🏼","🏇🏼","🤽🏻‍♀️","🤾🏼‍♀️"],
        colorOfTheme: "teal"
        
    ),
    Theme(
        name:"Jobs",
        emojis: ["👮🏻‍♀️","👩🏼‍🍳","👩🏽‍🏭","👩🏿‍💻","👨🏼‍🎨","👩🏽‍🚒","🥷🏼","👨🏻‍🚀","👨🏿‍🔬","👩🏻‍🌾","👷🏼‍♀️","👩🏾‍🏫","🧑🏽‍⚕️","🧑🏻‍🏭","👩🏼‍🔬"],
        numberOfPairs: 8,
        colorOfTheme: "yellow"
        
    ),
]
