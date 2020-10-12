//
//  FirstViewController.swift
//  PassingInfoBetweenScreens
//
//  Created by Damian Johns on 29/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

let kSecondSegueID = "second"

class FirstViewController: UIViewController, SecondViewControllerDelegate {
    
    @IBOutlet weak var findOutBtn: UIButton!
    @IBOutlet weak var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var secondVC: SecondViewController = SecondViewController()
        secondVC = segue.destination as! SecondViewController
        secondVC.delegate = self
    }
    
    // MARK: – Initialise Delegate
    
    @IBAction func findOutBtnTapped(_ sender: UIButton!) {
            // Push Second View Controller
            performSegue(withIdentifier: kSecondSegueID, sender: self)

        
    }

    // MARK: – SecondViewControllerDelegate
    func giveTheAnswerAsYes(_ yes: Bool) {
        if yes == true {
            answerLabel.text = "I luuuv Chicken. Yum!"
        } else {
            answerLabel.text = "No way, I'm a vegan!"
        }
        
    }
    
    func changeBackgroundColor(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}








