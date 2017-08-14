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
    
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        if emoji == "😀"{
            defLabel.text = "This man be smiling"
        } else if emoji == "💩"{
            defLabel.text = "This is crap!"
        }else if emoji == "😂"{
            defLabel.text = "That's so funny i can'y stop laughing!!!"
        }else if emoji == "😺"{
            defLabel.text = "Cool cats are hard to come by!"
        }else if emoji == "🤡"{
            defLabel.text = "Not all clowns are scary."
        }else if emoji == "😎"{
            defLabel.text = "Are yo too cool for school?"
        }else if emoji == "🤑"{
            defLabel.text = "Money, money, money, money.....Monnneyyyy!"
        }else {
            defLabel.text = "There's somthing missing....your face."
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
