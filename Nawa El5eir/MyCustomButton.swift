//
//  MyCustomButton.swift
//  MODERN CUACULATOR
//
//  Created by Admin on 6/1/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit


class MyCustomButton : UIButton {
    
    override func awakeFromNib() {
        
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 7.0
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.3).cgColor
        self.layer.shadowOffset = CGSize(width: -3, height: 3)
        self.layer.shadowOpacity = 1.0
    }
    
}
