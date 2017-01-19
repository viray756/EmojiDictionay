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
    
    var emojis = ["😀 This is a smiley face","😍","🙏","👿","👻","👀","🐼","🙊"]
    
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

