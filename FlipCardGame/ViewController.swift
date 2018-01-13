//
//  ViewController.swift
//  FlipCardGame
// 
//  Created by Jerry Zhang on 05/01/2018.
//  Copyright © 2018 Jerry Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var hasFlippedCard = false
    
    var flipCount = 0 {
        didSet {//property obsever.
            flipCountTable.text = "Flips:\(flipCount)"
        }
    }
    var emojiChoices = ["👻"]
    
    @IBOutlet var cardButtons: [UIButton]!//outlet connection is kind of an array of ui
    
    @IBOutlet weak var flipCountTable: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            if hasFlippedCard {
                
            }
        }

    }
    func flipCard(withEmoji emoji :String ,on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

