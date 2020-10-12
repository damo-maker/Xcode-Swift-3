//
//  KeyboardView.swift
//  ReUsableKeyboard
//
//  Created by Damian Johns on 28/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

protocol KeyBoardViewDelegate: class {
    func keyboardBtnTapped(_ buttonNumber: NSInteger)
}

class KeyboardView: UIView {
    
    var delegate: KeyBoardViewDelegate?

    @IBOutlet var view: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        Bundle.main.loadNibNamed("KeyboardView", owner: self, options: nil)
        self.addSubview(self.view)
    }
    
    @IBAction func buttonTapped(_ sender: CircleButton) {
        let buttonNumber = sender.tag
        self.delegate?.keyboardBtnTapped(buttonNumber)
    }

}
