//
//  ViewController.swift
//  EmojiDictionay
//
//  Created by Jose Viray on 1/18/17.
//  Copyright © 2017 Jose Viray. All rights reserved...
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView! //Property
    
    var emojis :[Emoji] = []  //Property
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Ask screen in the beginning what to look for
        emojiTable.dataSource = self
        emojiTable.delegate = self
        emojis = makeEmojiArray()
        
    }

    //Set how many rows need to be in TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    //What to populate in each row(cell)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    //Function to get to other ViewController (Second Screen)
    //Identifier must match what we put for the Identifier in the Mainstory for the segue
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //gets rid of grey highlight when selction is made
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    //Function is run when you are about to a segue from one viewcontroller to the next
    //Connects to other specified ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! EmojiDefinition
        defVC.emoji = sender as! Emoji //This connects to the variable that was established in other ViewController.  Sender is connected to Sender established in perform segue function above
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Face Icon"
        emoji1.definition = "Smiley Face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😍"
        emoji2.birthYear = 2004
        emoji2.category = "Face Icon"
        emoji2.definition = "Heart Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🙏"
        emoji3.birthYear = 2005
        emoji3.category = "Hand Icon"
        emoji3.definition = "Prayer Hands"
        
        return [emoji1,emoji2,emoji3]
    }

}

