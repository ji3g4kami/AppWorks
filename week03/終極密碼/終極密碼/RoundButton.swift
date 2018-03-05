//
//  RoundButton.swift
//  終極密碼
//
//  Created by 吳登秝 on 2018/3/5.
//  Copyright © 2018年 DavidWu. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var roundButton: Bool = false {
        didSet {
            if roundButton {
                layer.cornerRadius = frame.height/2
                layer.borderWidth = 2.0
                layer.borderColor = UIColor.white.cgColor
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height/2
            layer.borderWidth = 2.0
            layer.borderColor = UIColor.white.cgColor 
        }
    }

}
