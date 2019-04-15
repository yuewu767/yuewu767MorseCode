//
//  MorseTable.swift
//  projectMorse
//
//  Created by Yue Wu on 4/15/19.
//  Copyright © 2019 Yue Wu. All rights reserved.
//

import Foundation
struct entry{
    let key:Character
    let value:String
}
let morseTable:[entry]=[entry.init(key: "A", value: ".-"),entry.init(key: "B", value: "-..."),entry.init(key: "C", value: "-.-."),entry.init(key: "D", value: "-.."),entry.init(key: "E", value: "."),entry.init(key: "F", value: "..-."),entry.init(key: "G", value: "--."),entry.init(key: "H", value: "...."),entry.init(key: "I", value: ".."),entry.init(key: "J", value: ".---"),entry.init(key: "K", value: "-.-"),entry.init(key: "L", value: ".-.."),entry.init(key: "M", value: "--"),entry.init(key: "N", value: "-."),entry.init(key: "O", value: "---"),entry.init(key: "P", value: ".--."),entry.init(key: "Q", value: "--.-"),entry.init(key: "R", value: ".-."),entry.init(key: "S", value: "..."),entry.init(key: "T", value: "-"),entry.init(key: "U", value: "..-"),entry.init(key: "V", value: "...-"),entry.init(key: "W", value: ".--"),entry.init(key: "X", value: "-..-"),entry.init(key: "Y", value: "-.--"),entry.init(key: "Z", value: "--.."),entry.init(key: "0", value: "-----"),entry.init(key: "1", value: ".----"),entry.init(key: "2", value: "..---"),entry.init(key: "3", value: "...--"),entry.init(key: "4", value: "....-"),entry.init(key: "5", value: "....."),entry.init(key: "6", value: "-...."),entry.init(key: "7", value: "--..."),entry.init(key: "8", value: "---.."),entry.init(key: "9", value: "----.")]
