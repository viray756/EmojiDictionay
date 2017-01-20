//
//  EmojiDefinition.swift
//  EmojiDictionay
//
//  Created by Jose Viray on 1/18/17.
//  Copyright © 2017 Jose Viray. All rights reserved.
//

import UIKit

class EmojiDefinition: UIViewController {
    
    var emoji = ""
    var emojis = ["😀","😍","🙏","👿","👻","👀","🐼","🙊"]

    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == emojis[1] {
        defLabel.text = "Heart Face"
        }
        if emoji == emojis[0] {
            defLabel.text = "Smiley Face"
        }
        if emoji == emojis[2] {
            defLabel.text = "Prayer Hands"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
