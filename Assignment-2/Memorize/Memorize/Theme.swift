//
//  Theme.swift
//  Memorize
//
//  Created by Melisa Yılmaz on 9.07.2022.
//

import Foundation
import SwiftUI

struct Theme {
    var name: String
    var emojis: Array<String>
    var numberOfPairs: Int?
    var colorOfTheme: Color
    
}

var themes: [Theme] = [
    Theme(
        name:"Foods",
        emojis: ["🥦","🥑","🫐","🍠"],
        numberOfPairs: 47,
        colorOfTheme: Color.orange
        
    ),
    Theme(
        name:"Animals",
        emojis: ["🐶","🦋","🦅","🐣","🐠","🦭"],
        numberOfPairs: 8,
        colorOfTheme: Color.cyan
        
    ),
    Theme(
        name:"Flags",
        emojis: ["🇧🇧","🇧🇾","🇦🇿","🇨🇨","🇩🇰","🇬🇫","🇧🇮","🇨🇩","🇨🇮","🇨🇲","🇸🇿"],
        colorOfTheme: Color.green
        
    ),
    Theme(
        name:"Drinks",
        emojis: ["🥛","🧉","🍺","🍷","🍵","🍹","🍸","🧋","☕️","🧃","🥤","🥂","🍶"],
        colorOfTheme: Color.brown
        
    ),
    Theme(
        name:"Activities",
        emojis: ["⛷","🏋🏼‍♀️","⛹🏻‍♀️","🤸🏾‍♀️","🤼‍♀️","🏄🏿","🏊🏻‍♀️","🧗🏽‍♀️","🚴🏼‍♂️","🚵🏼","🤺","🚣🏽‍♀️","🧘🏼","🏇🏼","🤽🏻‍♀️","🤾🏼‍♀️"],
        colorOfTheme: Color.teal
        
    ),
    Theme(
        name:"Jobs",
        emojis: ["👮🏻‍♀️","👩🏼‍🍳","👩🏽‍🏭","👩🏿‍💻","👨🏼‍🎨","👩🏽‍🚒","🥷🏼","👨🏻‍🚀","👨🏿‍🔬","👩🏻‍🌾","👷🏼‍♀️","👩🏾‍🏫","🧑🏽‍⚕️","🧑🏻‍🏭","👩🏼‍🔬"],
        numberOfPairs: 8,
        colorOfTheme: Color.yellow
        
    ),
]
