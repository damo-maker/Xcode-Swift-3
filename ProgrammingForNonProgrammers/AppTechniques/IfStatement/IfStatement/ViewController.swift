//
//  ViewController.swift
//  Conditionals
//
//  Created by Damian Johns on 21/04/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var numberOfClicks: Int = 0
    
    @IBOutlet weak var label: UILabel!


    @IBAction func addClicks(_ sender: AnyObject) {
        numberOfClicks += 1
        if numberOfClicks >= 10 {
            label.text = "You win $\(1000)"
        }
        if numberOfClicks > 15 {
            label.text = "You win $\(500000)"
        }
    }

}
