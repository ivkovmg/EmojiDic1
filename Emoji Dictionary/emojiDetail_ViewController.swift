//
//  emojiDetail_ViewController.swift
//  Emoji Dictionary
//
//  Created by Matthew Ivkovich on 8/13/17.
//  Copyright © 2017 Mivko Tech. All rights reserved.
//

import UIKit

class emojiDetail_ViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var lblCat: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.strEmoji
        lblYear.text = "Orgination Date: \(emoji.strBirthYear)"
        lblCat.text = "Category: \(emoji.strCat)"
        defLabel.text = emoji.strDef
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
