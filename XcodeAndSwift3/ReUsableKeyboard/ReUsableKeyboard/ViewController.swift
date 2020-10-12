//
//  ViewController.swift
//  ReUsableKeyboard
//
//  Created by Damian Johns on 28/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit



class ViewController: UIViewController, KeyBoardViewDelegate {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var keyboardView: KeyboardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.keyboardView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func keyboardBtnTapped(_ buttonNumber: NSInteger) {
        self.outputLabel.text = "\(buttonNumber)"
        
        //self.outputLabel.text = self.outputLabel.text?.stringByAppendingString("\(buttonNumber)")
    }
}

