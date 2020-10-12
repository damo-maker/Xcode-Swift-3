//
//  SecondViewController.swift
//  PassingInfoBetweenScreens
//
//  Created by Damian Johns on 29/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

@objc protocol SecondViewControllerDelegate: class {
    func giveTheAnswerAsYes(_ yes: Bool)
    
    @objc optional func changeBackgroundColor(_ color: UIColor)
    
}

class SecondViewController: UIViewController {
    
    var delegate: SecondViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green

        // Do any additional setup after loading the view.
    }

    @IBAction func answerBtnTapped(_ sender: UIButton) {
        
        if sender.tag == 0 {
            dismiss(animated: true, completion: { () -> Void in
                // answer is YES
                self.delegate?.giveTheAnswerAsYes(true)
                self.delegate?.changeBackgroundColor!(UIColor.green)
                return
                })
        } else {
            dismiss(animated: true, completion: { () -> Void in
                // answer is NO
                self.delegate?.giveTheAnswerAsYes(false)
                self.delegate?.changeBackgroundColor!(UIColor.red)
                return
            })
        }
    }
}
