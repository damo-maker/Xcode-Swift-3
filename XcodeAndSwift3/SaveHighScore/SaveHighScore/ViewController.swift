//
//  ViewController.swift
//  youTubeTuts
//
//  Created by Damian Johns on 11/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    
    var highscore = 0

    @IBOutlet weak var labelScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if self.userDefaults.value(forKey: "Highscore") != nil {
            highscore = self.userDefaults.value(forKey: "Highscore") as! NSInteger
        }
        labelScore.text = "\(highscore)"
    }
    
    @IBAction func btnCountScore(_ sender: AnyObject) {
        highscore += 1
        self.userDefaults.setValue(highscore, forKey: "Highscore")
        self.userDefaults.synchronize()
        labelScore.text = "\(highscore)"
    }


}

