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
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playRoundButton.setTitle("DEAL!", for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playRoundTapped(_sender: UIButton) {
        
        // Randomize left number from 0 to 12
        let leftNumber = Int(arc4random_uniform(13))
        
        // Set the left image
        self.firstCardImageView.image = UIImage(named: cardNames[leftNumber])
        
        // Randomize rightNumber from 0 to 12
        let rightNumber = Int(arc4random_uniform(13))
        
        // Set the right image
        self.secondCardImageView.image = UIImage(named: cardNames[rightNumber])
        
        // Compare the card numbers
        if leftNumber > rightNumber {
            // Left card wins
            
            // Increment the score
            leftScore += 1
            
            // Update the label
            leftScoreLabel.text = String(leftScore)
            
        } else if leftNumber == rightNumber {
            // It's a tie
        } else {
            // Right card wins
            
            // Increment the score
            rightScore += 1
            
            // Update the label
            rightScoreLabel.text = String(rightScore)
        }
    }
}

