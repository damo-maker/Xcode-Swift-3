//
//  ViewController.swift
//  AddNumbers
//
//  Created by Damian Johns on 26/04/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myTextField1: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    @IBOutlet weak var myLabel1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField1.becomeFirstResponder()
        myTextField1.delegate = self
        myLabel1.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myButton1(_ sender: AnyObject) {
        myLabel1.isHidden = false
        
        
        let firstValue = Double(myTextField1.text!)
        let secondValue = Double(myTextField2.text!)
        
        if firstValue != nil && secondValue != nil {
            let outputValue = Double(firstValue! + secondValue!)
            myLabel1.text = "\(outputValue)"
        } else {
            myLabel1.text = "Hey enter a number buddy!"
        }
        myTextField1.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        myTextField1.resignFirstResponder()
     
    }
    
    func textFieldShouldReturn(_ myTextField1: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
}



