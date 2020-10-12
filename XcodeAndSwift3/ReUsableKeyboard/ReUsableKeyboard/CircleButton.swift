//
//  CircleButton.swift
//  ReUsableKeyboard
//
//  Created by Damian Johns on 28/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class CircleButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtonStyle()
    }
    
    override func awakeFromNib() {
        setupButtonStyle()
    }
    
    func setupButtonStyle() {
        self.layer.backgroundColor = UIColor.clear.cgColor
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 1.0
        
        self.setTitleColor(UIColor.white, for: UIControlState())
        
        self.layer.cornerRadius = self.layer.bounds.size.width / 2
    }
    
    func sethighLighted(_ highlighted: Bool) {
        if highlighted == true {
            highLightBtn()
        } else {
            clearHighlighted()
        }

    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                self.highLightBtn()
            } else {
                self.clearHighlighted()
            }
        }
    }
    
    func highLightBtn() {
        self.layer.backgroundColor = UIColor.red.cgColor
    }
    
    func clearHighlighted() {
        self.layer.backgroundColor = UIColor.clear.cgColor
    }
}
