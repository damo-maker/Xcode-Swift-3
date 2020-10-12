//
//  ViewController.swift
//  PassingData
//
//  Created by Damian Johns on 21/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let DestViewController: ViewTwo =  segue.destination as! ViewTwo
        if TextField.text != nil {
        DestViewController.LabelText = TextField.text!
        }
    }


}

