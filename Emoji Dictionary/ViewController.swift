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
    
    var emojis = ["😀","💩","😂","😺","🤡","😎","🤑"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tblvMain.dataSource = self
        tblvMain.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return 10  //this is returning the interger 10 for the function that is asking how many rows should the table populate
        
        return emojis.count //this returns the number of items in the array called emojis
    }
    
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

