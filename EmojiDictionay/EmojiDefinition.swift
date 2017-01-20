//
//  EmojiDefinition.swift
//  EmojiDictionay
//
//  Created by Jose Viray on 1/18/17.
//  Copyright © 2017 Jose Viray. All rights reserved.
//

import UIKit

class EmojiDefinition: UIViewController {
    
    var emoji = Emoji()
    

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "\(emoji.birthYear)"
        categoryLabel.text = emoji.category
        defLabel.text = emoji.definition
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
