//
//  ViewController.swift
//  EmojiDictionay
//
//  Created by Jose Viray on 1/18/17.
//  Copyright © 2017 Jose Viray. All rights reserved...
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView!
    
    var emojis = ["😀","😍","🙏","👿","👻","👀","🐼","🙊"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Ask screen in the beginning what to look for
        emojiTable.dataSource = self
        emojiTable.delegate = self
        
    }

    //Set how many rows need to be in TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    //What to populate in each row(cell)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
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
        defVC.emoji = sender as! String //This connects to the variable that was established in other ViewController.  Sender is connected to Sender established in perform segue function above
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

