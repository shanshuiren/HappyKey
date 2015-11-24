//
//  DefaultKeyboard.swift
//  TransliteratingKeyboard
//
//  Created by Alexei Baboulevitch on 7/10/14.
//  Copyright (c) 2014 Apple. All rights reserved.
//

func defaultKeyboard() -> Keyboard {
    var defaultKeyboard = Keyboard()
    
    for key in [
        "1","2","3","4","5","6","7","8","9","0"] {
        var keyModel = Key(.Character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 0, page: 0)
    }

    
    for key in ["\u{002B}", "\u{002D}", "\u{2022}","\u{002F}", "\u{003C}", "\u{2264}", "\u{003D}", "\u{003E}", "\u{2265}", "\u{2260}"] {
        var keyModel = Key(.Character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 1, page: 0)
    }
    
//    for key in ["\u{0028}","\u{0029}", "\u{007C}", "￼\u{207B}", "￼\u{207A}", "￼\u{207D}", "\u{207E}", "\u{211D}", "\u{2192}","\u{221E}"] {
//        var keyModel = Key(.Character)
//        keyModel.setLetter(key)
//        defaultKeyboard.addKey(keyModel, row: 1, page: 0)
//    }
    
    //    var keyModel = Key(.Shift)
    //    defaultKeyboard.addKey(keyModel, row: 2, page: 0)
//    var blank1 = Key(.Character)
//    blank1.setLetter("")
//    defaultKeyboard.addKey(blank1, row: 2, page: 0)
    
    
    for key in ["\u{00B1}", ".", "(", ")", "{", "}", "|", "x", "y"] {
        var keyModel = Key(.Character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 2, page: 0)
    }
    
//    var blank2 = Key(.Character)
//    blank2.setLetter("")
//    defaultKeyboard.addKey(blank2, row: 2, page: 0)
    
    var backspace = Key(.Backspace)
    defaultKeyboard.addKey(backspace, row: 2, page: 0)
    
    var keyModeChangeNumbers = Key(.ModeChange)
    keyModeChangeNumbers.uppercaseKeyCap = "\u{2245}\u{007E}\u{2220}\u{00B0}"
    keyModeChangeNumbers.toMode = 1
    defaultKeyboard.addKey(keyModeChangeNumbers, row: 3, page: 0)
    
    
    var keyboardChange = Key(.KeyboardChange)
    defaultKeyboard.addKey(keyboardChange, row: 3, page: 0)
    
    
    //
    //    //var settings = Key(.Settings)
    //    //defaultKeyboard.addKey(settings, row: 3, page: 0)
    //
    var space = Key(.Space)
    space.uppercaseKeyCap = "space"
    space.uppercaseOutput = " "
    space.lowercaseOutput = " "
    defaultKeyboard.addKey(space, row: 3, page: 0)
    
    var returnKey = Key(.Return)
    returnKey.uppercaseKeyCap = "return"
    returnKey.uppercaseOutput = "\n"
    returnKey.lowercaseOutput = "\n"
    defaultKeyboard.addKey(returnKey, row: 3, page: 0)
    
//        for key in ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"] {
//            var keyModel = Key(.SpecialCharacter)
//            keyModel.setLetter(key)
//            defaultKeyboard.addKey(keyModel, row: 0, page: 1)
//        }
    
    for key in ["\u{00B9}", "\u{00B2}", "\u{00B3}", "\u{2074}", "\u{2075}", "\u{2076}", "\u{2077}", "\u{2078}", "\u{2079}", "\u{2070}"] {
            var keyModel = Key(.SpecialCharacter)
            keyModel.setLetter(key)
            defaultKeyboard.addKey(keyModel, row: 0, page: 1)

        }
    for key in ["\u{2245}", "\u{007E}", "\u{2220}", "\u{00B0}", "\u{03B8}", "\u{03C0}", "\u{0394}", "\u{211D}", "\u{2192}", "\u{221E}"] {
        var keyModel = Key(.Character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 1, page: 1)
    }

    
    //    var keyModeChangeSpecialCharacters = Key(.ModeChange)
    //    keyModeChangeSpecialCharacters.uppercaseKeyCap = "#+="
    //    keyModeChangeSpecialCharacters.toMode = 2
    //    defaultKeyboard.addKey(keyModeChangeSpecialCharacters, row: 2, page: 1)
    //
    
//    var blank3 = Key(.SpecialCharacter)
//    blank3.setLetter("")
//    defaultKeyboard.addKey(blank3, row: 2, page: 1)
//
//    var blank4 = Key(.SpecialCharacter)
//    blank4.setLetter("")
//    defaultKeyboard.addKey(blank4, row: 2, page: 1)
    
    for key in ["","\u{221A}","ˣ", "ᵗ", "⁺", "⁻", "⁽", "⁾",""] {
            var keyModel = Key(.SpecialCharacter)
            keyModel.setLetter(key)
            defaultKeyboard.addKey(keyModel, row: 2, page: 1)
        }
    
//    var blank5 = Key(.SpecialCharacter)
//    blank5.setLetter("")
//    defaultKeyboard.addKey(blank5, row: 2, page: 1)
//    
//    var blank6 = Key(.SpecialCharacter)
//    blank6.setLetter("")
//    defaultKeyboard.addKey(blank6, row: 2, page: 1)
    
        defaultKeyboard.addKey(Key(backspace), row: 2, page: 1)
    
        var keyModeChangeLetters = Key(.ModeChange)
        keyModeChangeLetters.uppercaseKeyCap = "\u{002B}\u{002D}\u{2022}\u{002F}"
        keyModeChangeLetters.toMode = 0
        defaultKeyboard.addKey(keyModeChangeLetters, row: 3, page: 1)
    
        defaultKeyboard.addKey(Key(keyboardChange), row: 3, page: 1)
    //
    //    //defaultKeyboard.addKey(Key(settings), row: 3, page: 1)
    
        defaultKeyboard.addKey(Key(space), row: 3, page: 1)
    
        defaultKeyboard.addKey(Key(returnKey), row: 3, page: 1)
    //
    //    for key in ["[", "]", "{", "}", "#", "%", "^", "*", "+", "="] {
    //        var keyModel = Key(.SpecialCharacter)
    //        keyModel.setLetter(key)
    //        defaultKeyboard.addKey(keyModel, row: 0, page: 2)
    //    }
    //
    //    for key in ["_", "\\", "|", "~", "<", ">", "€", "£", "¥", "•"] {
    //        var keyModel = Key(.SpecialCharacter)
    //        keyModel.setLetter(key)
    //        defaultKeyboard.addKey(keyModel, row: 1, page: 2)
    //    }
    //
    //    defaultKeyboard.addKey(Key(keyModeChangeNumbers), row: 2, page: 2)
    //
    //    for key in [".", ",", "?", "!", "'"] {
    //        var keyModel = Key(.SpecialCharacter)
    //        keyModel.setLetter(key)
    //        defaultKeyboard.addKey(keyModel, row: 2, page: 2)
    //    }
    //
    //    defaultKeyboard.addKey(Key(backspace), row: 2, page: 2)
    //
    //    defaultKeyboard.addKey(Key(keyModeChangeLetters), row: 3, page: 2)
    //
    //    defaultKeyboard.addKey(Key(keyboardChange), row: 3, page: 2)
    //
    //    //defaultKeyboard.addKey(Key(settings), row: 3, page: 2)
    //
    //    defaultKeyboard.addKey(Key(space), row: 3, page: 2)
    //
    //    defaultKeyboard.addKey(Key(returnKey), row: 3, page: 2)
    
    return defaultKeyboard
}
