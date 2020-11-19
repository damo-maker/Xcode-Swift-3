//
//  ViewController.swift
//  Conditionals
//
//  Created by Damian Johns on 21/04/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tNum1: UITextField!
    @IBOutlet weak var tNum2: UITextField!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBAction func doMath(_ sender: AnyObject) {
        guard let t1: String = tNum1.text, let num1: Int = Int(t1), let t2: String = tNum2.text, let num2: Int = Int(t2)  else {
            valueLabel.text = "Int conversion failed"
            return
        }
        valueLabel.text = "\(num1 + num2)"
    }
   
}

