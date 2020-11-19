//
//  ViewController.swift
//  Calculator
//
//  Created by Damian Johns on 22/04/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

enum modes {
    case notSet
    case addition
    case subtraction
    case multiplication
}

class ViewController: UIViewController {
    
    var labelString: String = "0"
    var currentMode: modes = .notSet
    var savedNum: Int = 0
    var lastButtonWasMode: Bool = false

    func updateText() {
        
    }

    func changeModes(newMode: modes) {
        
    }
}

