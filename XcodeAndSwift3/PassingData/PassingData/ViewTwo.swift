//
//  ViewTwo.swift
//  PassingData
//
//  Created by Damian Johns on 21/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import Foundation
import UIKit

class ViewTwo: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    
    var LabelText: String = ""
    
    override func viewDidLoad() {
        
        Label.text = LabelText
        
    }
}
