//
//  ViewController.swift
//  youTubeTuts
//
//  Created by Damian Johns on 12/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func action(_ sender: AnyObject) {
        output.text = input.text
        UserDefaults.standard.setValue(input.text, forKey: "myName")
        input.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "myName") as? String {
            output.text = x
        }
    }
    
}

