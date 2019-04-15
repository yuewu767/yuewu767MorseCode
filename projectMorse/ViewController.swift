//
//  ViewController.swift
//  projectMorse
//
//  Created by Yue Wu on 4/15/19.
//  Copyright © 2019 Yue Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        morseTranslation.text=""
        // Do any additional setup after loading the view.
    }
    var displayText = ""
    @IBOutlet weak var textInputVALUE: UITextField!
    @IBAction func textInput(_ sender: Any) {
    }
    @IBOutlet weak var morseTranslation: UITextView!
    
    @IBAction func submit(_ sender: Any) {
        morseTranslation.text=""
        displayText=""
        let input = String(textInputVALUE.text ?? "")
        let codeArray = input.components(separatedBy: " ")
        var wordIndex = 0
        for entry in codeArray{
            morseEncode(letter: entry[entry.startIndex])
            for i in 1..<entry.count{
                let index = entry.index(entry.startIndex, offsetBy: i)
                displayText+=" "
                morseEncode(letter: entry[index])
            }
            if(wordIndex != (codeArray.endIndex - 1)){
                morseEncode(letter: " ")
            }
            wordIndex += 1
            
        }
        morseTranslation.text=displayText
    }
    func morseEncode(letter:Character){
        let ans = letter.uppercased()
        if(ans >= "A" && ans <= "Z"){
            displayText+=morseTable[(Int
                )(Character(ans).asciiValue! - Character("A").asciiValue!) ].value
        }else if(ans==" "){
            displayText+="|"
        }else if(ans >= "0" && ans <= "9"){
            displayText+=morseTable[(Int)(Character(ans).asciiValue! - Character("0").asciiValue!)+26].value
        }
        
   
    }
}

