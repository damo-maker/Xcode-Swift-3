//
//  ViewController.swift
//  SwiftEnable
//
//  Created by Damian Johns on 20/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    
    @IBOutlet weak var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func enableButton(_ sender: AnyObject) {
        
        buttonOutlet.isEnabled = true
        segmentOutlet.isEnabled = true
        sliderOutlet.isEnabled = true
        switchOutlet.isEnabled = true
    }

    @IBAction func disableButton(_ sender: AnyObject) {
        
        buttonOutlet.isEnabled = false
        segmentOutlet.isEnabled = false
        sliderOutlet.isEnabled = false
        switchOutlet.isEnabled = false
    }

    @IBAction func isItEnabled(_ sender: AnyObject) {
        
        if buttonOutlet.isEnabled == true {
            label.text = "Objects are enabled"
        } else {
            label.text = "Objects are disabled"
        }
        
        
    }

}

