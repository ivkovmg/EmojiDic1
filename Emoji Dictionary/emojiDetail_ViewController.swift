//
//  emojiDetail_ViewController.swift
//  Emoji Dictionary
//
//  Created by Matthew Ivkovich on 8/13/17.
//  Copyright © 2017 Mivko Tech. All rights reserved.
//

import UIKit

class emojiDetail_ViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            emojiLabel.text = emoji
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
