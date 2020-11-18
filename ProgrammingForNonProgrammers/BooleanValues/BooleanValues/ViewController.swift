//
//  ViewController.swift
//  Conditionals using Boolean Values
//
//  Created by Damian Johns on 21/04/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isOn: Bool = true

    @IBAction func toggleLights(_ sender: AnyObject) {
        if isOn {
            isOn = false
            view.backgroundColor = UIColor.darkGray
        } else {
            isOn = true
            view.backgroundColor = UIColor.white
        }
    }

}

