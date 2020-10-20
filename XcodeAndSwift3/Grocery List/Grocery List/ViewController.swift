//
//  ViewController.swift
//  Grocery List
//
//  Created by Damian Johns on 25/04/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var groceryTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        groceryTextView.delegate = self
    }

    @IBAction func addItem(_ sender: AnyObject) {
        if let text = textField.text, text != "" {
            groceryTextView.text.append("\(text)\n")
            textField.text = ""
            textField.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

