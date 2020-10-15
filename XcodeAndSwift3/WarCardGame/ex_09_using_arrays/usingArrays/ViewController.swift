//
//  ViewController.swift
//  WarCardGame
//
//  Created by Damian Johns on 23/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playRoundButton.setTitle("Play", for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playRoundTapped(_sender: UIButton) {
        
        // Randomize left number from 2 to 10
        let leftNumber = arc4random_uniform(9) + 2
        
        // Set the left image
        self.firstCardImageView.image = UIImage(named: "card\(leftNumber)")
        
        // Randomize rightNumber from 2 to 10
        let rightNumber = arc4random_uniform(9) + 2
        
        // Set the right image
        self.secondCardImageView.image = UIImage(named: "card\(rightNumber)")
    }
}

