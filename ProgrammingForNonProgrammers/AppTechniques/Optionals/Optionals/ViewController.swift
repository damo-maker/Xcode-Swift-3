//
//  ViewController.swift
//  Optionals
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
        let num1: Int = Int(tNum1.text!)!
        let num2: Int = Int(tNum2.text!)!
        valueLabel.text = "\(num1 + num2)"
    }
   
}

