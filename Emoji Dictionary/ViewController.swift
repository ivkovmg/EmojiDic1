//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Matthew Ivkovich on 8/13/17.
//  Copyright © 2017 Mivko Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblvMain: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tblvMain.dataSource = self
        tblvMain.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return 10  //this is returning the interger 10 for the function that is asking how many rows should the table populate
        
        return emojis.count //this returns the number of items in the array called emojis
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.strEmoji
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! emojiDetail_ViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
            emoji1.strEmoji = "😀"
            emoji1.strBirthYear = 2010
            emoji1.strCat = "Smiley"
            emoji1.strDef = "This man be smiling"
        
        let emoji2 = Emoji()
            emoji2.strEmoji = "💩"
            emoji2.strBirthYear = 2011
            emoji2.strCat = "Smiley"
            emoji2.strDef = "This is crap!"
        
        let emoji3 = Emoji()
            emoji3.strEmoji = "😂"
            emoji3.strBirthYear = 2009
            emoji3.strCat = "Smiley"
            emoji3.strDef = "That's so funny i can'y stop laughing!!!"
        
        let emoji4 = Emoji()
            emoji4.strEmoji = "😺"
            emoji4.strBirthYear = 2015
            emoji4.strCat = "Animal"
            emoji4.strDef = "Cool cats are hard to come by!"
        
        let emoji5 = Emoji()
            emoji5.strEmoji = "🤡"
            emoji5.strBirthYear = 2014
            emoji5.strCat = "Smiley"
            emoji5.strDef = "Not all clowns are scary."
        
        let emoji6 = Emoji()
            emoji6.strEmoji = "😎"
            emoji6.strBirthYear = 2013
            emoji6.strCat = "Smiley"
            emoji6.strDef = "Are you too cool for school?"

        let emoji7 = Emoji()
            emoji7.strEmoji = "🤑"
            emoji7.strBirthYear = 2012
            emoji7.strCat = "Smiley"
            emoji7.strDef = "Money, money, money, money.....Monnneyyyy!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]

    }
}

